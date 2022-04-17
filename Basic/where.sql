SELECT
    *
FROM
    cd.facilities
WHERE
    membercost > 0;

-- How can you produce a list of facilities that charge a fee to members, and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, facility name, member cost, and monthly maintenance of the facilities in question.
SELECT
    facid,
    name,
    membercost,
    monthlymaintenance
FROM
    cd.facilities
WHERE
    membercost > 0
    AND (membercost < monthlymaintenance / 50.0);

