INSERT INTO public."documentType"
("type", "name")
VALUES('CC', 'Cedula de Ciudadania');

INSERT INTO public."documentType"
("type", "name")
VALUES('CE', 'Cedula de Extranjeria');

INSERT INTO public."User"
("documentTypeId", "document", "name", last_name, email, cel_phone, birth_date)
VALUES(1, '1130595250', 'Jhon Gabriel', 'Ospina Orozco', 'jhonospina2711@gmail.com', '3185839956', '11/07/1987');


INSERT INTO public."Target"
(name, min_cant, max_cant, min_amount_total, max_amount_total, rate, max)
VALUES('NEW', 0, 2, null, 100000, 0.15, 500000);

INSERT INTO public."Target"
(name, min_cant, max_cant, min_amount_total, max_amount_total, rate, max)
VALUES('FREQUENT', 2, 5, 100000, 500000, 0.10, 1000000);

INSERT INTO public."Target"
(name, min_cant, max_cant, min_amount_total, max_amount_total, rate, max)
VALUES('PREMIUM', 5, null, 500000, null, 0.05, 5000000);

INSERT INTO public."Loan"
(user_id, amount, term, "date", installment, target_id, rate)
VALUES(1, 100000, 12, '29/9/2020 21:36:49', 9025.83, 3, 0.15);

select CURRENT_TIMESTAMP

2022-10-04 12:24:23.217 -0500

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 90974.17, '2020-10-04 21:36:49');


INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 81948.34, '2020-11-29 21:36:49');


INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 72922.51, '29/12/2020 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 63896.68, '29/1/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 54870.84, '28/2/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 45845.01, '29/3/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 36819.18, '29/4/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 27793.35, '29/5/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 18767.52, '29/6/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 9741.69, '29/7/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, 715.86, '29/8/2021 21:36:49');

INSERT INTO public."Payment"
(loan_id, amount, debt, "date")
VALUES(1, 9025.83, -8309.97, '29/9/2021 21:36:49');

select * from public."Loan" l 
inner join 

select l.amount - sum(p.amount) from public."Payment" p 
inner join public."Loan" l 
on p.loan_id = l.id 
where p.loan_id = 1
group by l.amount


