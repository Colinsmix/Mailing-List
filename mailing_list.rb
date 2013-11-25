# require './mailing_list_class.rb'
require 'pry'

salutations = [
  ['Mr.', 'Mrs.'],
  'Mrs.',
  ['Mr.', 'Mrs.'],
  ['Dr.'],
  'Ms.'
]
 
first_names = [
  'John',
  'Jane',
  'Sam',
  'Louise',
  'Kyle'
]
 
last_names = [
  'Dillinger',
  'Cook',
  'Livingston',
  'Levinger',
  'Merlotte'
]
 
addresses = [
  '33 Foolish Lane, Boston MA 02210',
  '45 Cottage Way, Dartmouth, MA 02342',
  "54 Sally's Court, Bridgewater, MA 02324",
  '4534 Broadway, Boston, MA 02110',
  '4231 Cynthia Drive, Raynham, MA 02767'
]

arr = []
  # join salutations
  salutations.each_with_index do |salutations, index|
    if salutations.instance_of? Array
      salutation = salutations.join(' & ')
    else
      salutation = salutations
    end
 
    # build hash
    label = {
      salutation: salutation,
      first_name: first_names[index],
      last_name: last_names[index],
      address: addresses[index]
    }
    arr.push(label) #pushing hash into array
    puts arr[index][:salutation] + " " + arr[index][:first_name] + " " + arr[index][:last_name] + "\n" + arr[index][:address] + "\n\n"
  end
  puts arr
  # puts arr #need to call the array
  # arr.length.times do |index|
  #   puts arr[index][:salutation] + " " + arr[index][:first_name] + " " + arr[index][:last_name] + "\n" + arr[index][:address] + "\n"
  # end




  