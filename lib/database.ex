use Amnesia

defdatabase Database do
  deftable(
    Account,
    [{:id, autoincrement}, :first_name, :last_name, :balance, :email],
    type: :ordered_set,
    index: [:balance]
  )
end
