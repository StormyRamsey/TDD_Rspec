require 'rails_helper.rb'

# Test that we want to run that will fail,
# until we write the test that will make it pass
#-------------------------
# visit root route
# click create post link
# fill in the form with needed information (title and caption job)
# click submit button
# expect page to have the content we submitted

feature 'Creating Posts' do
  scenario 'can create job' do
    #visit root route
    visit '/'
    #click create post link
    click_link 'Create Post'
    #fill in the form with needed information (title and caption job)
    fill_in 'Title', with: 'title'
    fill_in 'Caption', with: 'caption'
    #click submit button
    click_button 'Create Post'
    #expect page to have the content we submitted
    expect(page).to have_content('title')
    expect(page).to have_content('caption')
  end
end
