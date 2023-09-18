package p033j$.time;
/* renamed from: j$.time.c */
/* loaded from: classes2.dex */
public enum EnumC2785c {
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
    private static final EnumC2785c[] f573a = values();

    /* renamed from: a */
    public static EnumC2785c m688a(int i) {
        if (i < 1 || i > 12) {
            throw new C2783a("Invalid value for MonthOfYear: " + i);
        }
        return f573a[i - 1];
    }
}
