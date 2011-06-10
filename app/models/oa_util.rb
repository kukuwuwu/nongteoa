# encoding: utf-8
class OaUtil
  # 省市联动数据
  #
  # 作者: 孙博
  # 最后更新时间: 2011-5-14
  #
  # ==== 示例
  #   OaUtil.address_data
  #
  # ==== 返回
  #   json 格式的
  #   { data : [
  #          {treeNode:'北京',value:1,childNode:[
  #              {treeNode:'东城区',value:11,childNode:[]},
  #              {treeNode:'西城区',value:12,childNode:[
  #                  {treeNode:'西城区1',value:121,childNode:[]},
  #                  {treeNode:'西城区2',value:122,childNode:[]}
  #                  ]
  #              }
  #              ]
  #          },
  #          {treeNode:'吉林',value:2,childNode:[
  #              {treeNode:'朝阳区',value:2-1,childNode:[]},
  #              {treeNode:'南关区',value:2-2,childNode:[
  #                  {treeNode:'南关区1',value:2-2-1,childNode:[]},
  #                  {treeNode:'南关区2',value:2-2-2,childNode:[]}
  #                  ]
  #              }
  #              ]
  #          }
  #      ]
  #  };
  #
  def self.address_data
#    address_data = OaUtil.get_config_value("address_data")
#    return address_data.html_safe if address_data
    provinces = Province.find :all,:include => :cities
    province_datas = []
    provinces.each do |province|
      city_datas = []
      province.cities.each do |city|
        country_datas = []
        city.countries.each do |country|
          country_datas << {:treeNode => country.title,:value => "#{province.id}-#{city.id}-#{country.id}",:childNode => []}
        end
        city_datas << {:treeNode => city.title,:value => "#{province.id}-#{city.id}",:childNode => country_datas}
      end
      province_datas << {:treeNode => province.title,:value => "#{province.id}",:childNode => city_datas}
    end
    result_json = province_datas.to_json.html_safe
#    OaUtil.set_config_value("address_data",result_json) and result_json
  end

end