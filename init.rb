# Include hook code here
ActionView::Base.send :include, ZodiacHelper
ActiveRecord::Base.send :include, ZodiacHelper
