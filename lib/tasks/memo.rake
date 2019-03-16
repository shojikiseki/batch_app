namespace :memo do
  desc 'その日に投稿されたメモを全て削除'
  task today_memos_delete: :environment do
    start_date = DateTime.current.beginning_of_day
    end_date = DateTime.current.end_of_day
    Memo.where(created_at: start_date..end_date).delete_all
  end
end
