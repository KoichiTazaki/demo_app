json.array!(@projects) do |project|
  json.extract! project, :name, :code, :area, :stage, :tmcp_rep, :bm_rep, :priority, :fih_target
  json.url project_url(project, format: :json)
end