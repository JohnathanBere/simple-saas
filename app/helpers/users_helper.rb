module UsersHelper
    
    def job_title_icon
        if @user.profile.job_title == "Student"
            "<i class='fa fa-graduation-cap'></i>".html_safe
        elsif @user.profile.job_title == "Lecturer"
            "<i class='fa fa-subscript'></i>".html_safe
        elsif @user.profile.job_title == "Staff Member"
            "<i class='fa fa-usd'></i>".html_safe
        end
    end
    
end