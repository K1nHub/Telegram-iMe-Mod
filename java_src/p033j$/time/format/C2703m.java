package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
public class C2703m extends C2704n {
    private C2703m(String str, String str2, C2704n c2704n) {
        super(str, str2, c2704n, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2703m(String str, String str2, C2704n c2704n, C2693c c2693c) {
        super(str, null, null, null);
    }

    @Override // p033j$.time.format.C2704n
    /* renamed from: b */
    protected boolean mo888b(char c, char c2) {
        return C2710t.m857b(c, c2);
    }

    @Override // p033j$.time.format.C2704n
    /* renamed from: d */
    protected C2704n mo886d(String str, String str2, C2704n c2704n) {
        return new C2703m(str, str2, c2704n);
    }

    @Override // p033j$.time.format.C2704n
    /* renamed from: f */
    protected boolean mo884f(CharSequence charSequence, int i, int i2) {
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
            if (!C2710t.m857b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
