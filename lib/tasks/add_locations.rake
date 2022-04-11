namespace :add_locations do
  desc 'Adding default locations'
  task add_new_locations: :environment do
  next if Location.find_by(location_code: "BAL").present?
  locations = [
    Location.new(placename_en: 'Gilgit', location_code: 'GIL', admin_level: 1, type: 'province', hierarchy_path: 'GIL'),
     
    Location.new(placename_en: 'Gilgit', location_code: 'GIL01', admin_level: 2, type: 'district', hierarchy_path: 'GIL.GIL01'),
    Location.new(placename_en: 'Gilgit', location_code: 'GIL0101', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL01.GIL0101'),
    Location.new(placename_en: 'Ghizer (at Gakuch)', location_code: 'GIL02', admin_level: 2, type: 'district', hierarchy_path: 'GIL.GIL02'),
    Location.new(placename_en: 'Gahkoch', location_code: 'GIL0201', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL02.GIL0201'),
    Location.new(placename_en: 'Gupis', location_code: 'GIL0202', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL02.GIL0202'),
    Location.new(placename_en: 'Ishkoman', location_code: 'GIL0203', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL02.GIL0203'),
    Location.new(placename_en: 'Punjal', location_code: 'GIL0204', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL02.GIL0204'),
    Location.new(placename_en: 'Yasin', location_code: 'GIL0205', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL02.GIL0205'),

    Location.new(placename_en: 'Hunza', location_code: 'GIL03', admin_level: 2, type: 'district', hierarchy_path: 'GIL.GIL03'),
    Location.new(placename_en: 'Ali Abad', location_code: 'GIL0301', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL03.GIL0301'),
    Location.new(placename_en: 'Gojal', location_code: 'GIL0302', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL03.GIL0302'),

    Location.new(placename_en: 'Nagar', location_code: 'GIL04', admin_level: 2, type: 'district', hierarchy_path: 'GIL.GIL04'),
    Location.new(placename_en: 'Nagar I', location_code: 'GIL0401', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL04.GIL0401'),
    Location.new(placename_en: 'Nagar II', location_code: 'GIL0402', admin_level: 3, type: 'tehsil', hierarchy_path: 'GIL.GIL04.GIL0402'),

    Location.new(placename_en: 'Baltistan', location_code: 'BAL', admin_level: 1, type: 'province', hierarchy_path: 'BAL'),

    Location.new(placename_en: 'Baltistan (At Skardu)', location_code: 'BAL01', admin_level: 2, type: 'district', hierarchy_path: 'BAL.BAL01'),
    Location.new(placename_en: 'Gultari', location_code: 'BAL0101', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL01.BAL0101'),
    Location.new(placename_en: 'Rondu', location_code: 'BAL0102', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL01.BAL0102'),
    Location.new(placename_en: 'Skardu', location_code: 'BAL0103', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL01.BAL0103'),

    Location.new(placename_en: 'Kharmang', location_code: 'BAL02', admin_level: 2, type: 'district', hierarchy_path: 'BAL.BAL02'),
    Location.new(placename_en: 'Kharmang', location_code: 'BAL0201', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL02.BAL0201'),

    Location.new(placename_en: 'Shigar', location_code: 'BAL03', admin_level: 2, type: 'district', hierarchy_path: 'BAL.BAL03'),
    Location.new(placename_en: 'Shigar', location_code: 'BAL0301', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL03.BAL0301'),
    
    Location.new(placename_en: 'Ghanche (At Khaplu)', location_code: 'BAL04', admin_level: 2, type: 'district', hierarchy_path: 'BAL.BAL04'),
    Location.new(placename_en: 'Khaplu', location_code: 'BAL0401', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL04.BAL0401'),
    Location.new(placename_en: 'Mashabrum', location_code: 'BAL0402', admin_level: 3, type: 'tehsil', hierarchy_path: 'BAL.BAL04.BAL0402'),

    Location.new(placename_en: 'Astore', location_code: 'AST', admin_level: 1, type: 'province', hierarchy_path: 'AST'),

    Location.new(placename_en: 'Diamir (At Chilas)', location_code: 'AST01', admin_level: 2, type: 'district', hierarchy_path: 'AST.AST01'),
    Location.new(placename_en: 'Babu Sar', location_code: 'AST0101', admin_level: 3, type: 'tehsil', hierarchy_path: 'ASR.AST01.AST0101'),
    Location.new(placename_en: 'Chilas', location_code: 'AST0102', admin_level: 3, type: 'tehsil', hierarchy_path: 'ASR.AST01.AST0102'),
    Location.new(placename_en: 'Darel', location_code: 'AST0103', admin_level: 3, type: 'tehsil', hierarchy_path: 'ASR.AST01.AST0103'),
    Location.new(placename_en: 'Tangir', location_code: 'AST0104', admin_level: 3, type: 'tehsil', hierarchy_path: 'ASR.AST01.AST0104'),

    Location.new(placename_en: 'Astore', location_code: 'AST02', admin_level: 2, type: 'district', hierarchy_path: 'AST.AST02'),
    Location.new(placename_en: 'Astore', location_code: 'AST0201', admin_level: 3, type: 'tehsil', hierarchy_path: 'AST.AST02.AST0201'),
    Location.new(placename_en: 'Shounter', location_code: 'AST0202', admin_level: 3, type: 'tehsil', hierarchy_path: 'AST.AST02.AST0202')
  ]
  Location.locations_by_code = locations.map { |l| [l.location_code, l] }.to_h

  locations.each(&:name_from_hierarchy)

  locations.each(&:save!)
  GenerateLocationFilesService.generate
  end
end
