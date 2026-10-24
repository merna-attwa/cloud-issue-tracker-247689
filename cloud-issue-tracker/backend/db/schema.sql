CREATE TABLE issues ( 
id          
UUID PRIMARY KEY DEFAULT gen_random_uuid(), 
title       
VARCHAR(100) NOT NULL, 
description VARCHAR(500) NOT NULL, 
priority    
TEXT NOT NULL CHECK (priority IN ('Low', 'Medium', 
'High')), 
status      
TEXT NOT NULL DEFAULT 'Open' CHECK (status IN ('Open', 
'Resolved')), 
created_at  TIMESTAMPTZ NOT NULL DEFAULT now() 
); 