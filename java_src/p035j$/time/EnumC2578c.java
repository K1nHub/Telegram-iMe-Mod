package p035j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2578c {
    JANUARY,
    FEBRUARY,
    MARCH,
    APRIL,
    MAY,
    JUNE,
    JULY,
    AUGUST,
    SEPTEMBER,
    OCTOBER,
    NOVEMBER,
    DECEMBER;
    

    /* renamed from: a */
    private static final EnumC2578c[] f489a = values();

    /* renamed from: a */
    public static EnumC2578c m679a(int i) {
        if (i < 1 || i > 12) {
            throw new C2576a("Invalid value for MonthOfYear: " + i);
        }
        return f489a[i - 1];
    }
}
