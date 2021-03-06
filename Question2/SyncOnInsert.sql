DROP TRIGGER IF EXISTS sync_on_insert;
CREATE TRIGGER sync_on_insert AFTER INSERT ON ta
    FOR EACH ROW
    BEGIN
    INSERT INTO tb
    SET POINTER = NEW.POINTER,
        `CREATE AT`= NEW.`CREATE AT`,
        `LAST CHANGE AT` = NEW.`LAST CHANGE AT`,
        TEAM = NEW.TEAM,
        PROECESSOR = NEW.PROECESSOR,
        `IS BUG` = NEW.`IS BUG`,
        `IS FRONTEND BUG` = NEW.`IS FRONTEND BUG`,
        `INTERNAL INCIDEN` = NEW.`INTERNAL INCIDEN`,
        `IS IT TICKET` = NEW.`IS IT TICKET`,
        `IS OUTBOUND` = NEW.`IS OUTBOUND`,
        `IS MARKED` = NEW.`IS MARKED`,
        WAVE = NEW.WAVE,
        TIMEYEAR = NEW.TIMEYEAR,
        SUBJECT = NEW.SUBJECT,
        DESCRIPTION = NEW.DESCRIPTION,
        OBJECTID = NEW.OBJECTID,
        GUID = NEW.GUID,
        UPDATED = NEW.UPDATED;
    END


