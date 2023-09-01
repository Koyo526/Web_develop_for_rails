crumb :root do
  # 各crumbで親子関係を見ることにする
end
crumb :offices do 
  office = Office.find(params[:ieul_office_id])
  city = office.city

  link "#{city.prefecture.name} #{city.name}", cities_path(city.prefecture, city)
  link "#{office.company.name} #{office.name}", offices_path(office)
end
crumb :reviews do
  review = Review.find(params[:id])
  office = review.office
  city = office.city

  link "#{city.prefecture.name} #{city.name}", cities_path(city.prefecture, city)
  link "#{office.company.name} #{office.name}", offices_path(office)
  link review.headline, reviews_path(review)
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