package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
public class C2702m extends C2703n {
    private C2702m(String str, String str2, C2703n c2703n) {
        super(str, str2, c2703n, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2702m(String str, String str2, C2703n c2703n, C2692c c2692c) {
        super(str, null, null, null);
    }

    @Override // p033j$.time.format.C2703n
    /* renamed from: b */
    protected boolean mo892b(char c, char c2) {
        return C2709t.m861b(c, c2);
    }

    @Override // p033j$.time.format.C2703n
    /* renamed from: d */
    protected C2703n mo890d(String str, String str2, C2703n c2703n) {
        return new C2702m(str, str2, c2703n);
    }

    @Override // p033j$.time.format.C2703n
    /* renamed from: f */
    protected boolean mo888f(CharSequence charSequence, int i, int i2) {
        int length = this.f547a.length();
        if (length > i2 - i) {
            return false;
        }
        int i3 = 0;
        while (true) {
            int i4 = length - 1;
            if (length <= 0) {
                return true;
            }
            int i5 = i3 + 1;
            int i6 = i + 1;
            if (!C2709t.m861b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
