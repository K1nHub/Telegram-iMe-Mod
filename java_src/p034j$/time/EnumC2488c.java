package p034j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2488c {
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
    private static final EnumC2488c[] f483a = values();

    /* renamed from: a */
    public static EnumC2488c m685a(int i) {
        if (i < 1 || i > 12) {
            throw new C2486a("Invalid value for MonthOfYear: " + i);
        }
        return f483a[i - 1];
    }
}
