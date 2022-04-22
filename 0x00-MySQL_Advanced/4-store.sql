-- TRIGGERS
CREATE TRIGGER ins_qty_dec BEFORE
INSERT ON orders FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.number
WHERE NAME = NEW.item_name;