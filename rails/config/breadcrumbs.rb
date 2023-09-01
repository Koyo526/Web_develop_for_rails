crumb :root do
  if params[:ieul_office_id]
    office = Office.find(params[:ieul_office_id])
    link City.find(office.city_id).name, cities_path(1, office.city_id)
  elsif params[:city_id]
    link Office.find(params[:city_id]).name, cities_path(1, params[:city_id])
  else
    link Review.find(params[:id]).city.name, cities_path(1, 669)
  end
end
crumb :offices do 
  if params[:ieul_office_id]
    link Office.find(params[:ieul_office_id]).name, offices_path(params[:ieul_office_id])
  else
    review = Review.find(params[:id])
    link '企業ページ', offices_path(review.ieul_office_id)
  end
  parent :root
end
crumb :reviews do
  link "口コミ詳細", reviews_path(params[:id])
  parent :offices
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