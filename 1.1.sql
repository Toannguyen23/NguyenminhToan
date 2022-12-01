create trigger checkluong_nv on nhanvien for insert as
if (select luong from inserted) < 15000
begin
print'Tien luong toi thieu phai hon 15000'
rollback transaction
end