crumb :root do
  if params[:ieul_office_id]
    office = Office.find(params[:ieul_office_id])
    # City.find(office.prefecture_id).prefecture.name + 
    link City.find(office.city_id).name, cities_path(1, Office.find(office.id).city)
  else
    link Office.find(params[:city_id]).name, cities_path(1, params[:city_id])
  end
end

crumb :companys do |companys_id|
  if companys_id
    link '企業ページ', offices_path(companys_id)
  else
    companys_id = Review.find(1).ieul_office_id
    link '企業ページ', offices_path(companys_id)
  end
  parent :root
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).