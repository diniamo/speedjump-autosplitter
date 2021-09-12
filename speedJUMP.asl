state("speedJUMP")
{
    int level : "UnityPlayer.dll", 0x19F1860, 0x50, 0x0, 0x98;
}

start
{
    return old.level == 0 && current.level == 1;
}

split
{
    return old.level != 0 && (current.level == (old.level + 1));
}

reset
{
    return old.level == 0 && current.level == 1;
}
