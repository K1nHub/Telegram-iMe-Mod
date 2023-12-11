package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
public class C2704m extends C2705n {
    private C2704m(String str, String str2, C2705n c2705n) {
        super(str, str2, c2705n, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2704m(String str, String str2, C2705n c2705n, C2694c c2694c) {
        super(str, null, null, null);
    }

    @Override // p033j$.time.format.C2705n
    /* renamed from: b */
    protected boolean mo889b(char c, char c2) {
        return C2711t.m858b(c, c2);
    }

    @Override // p033j$.time.format.C2705n
    /* renamed from: d */
    protected C2705n mo887d(String str, String str2, C2705n c2705n) {
        return new C2704m(str, str2, c2705n);
    }

    @Override // p033j$.time.format.C2705n
    /* renamed from: f */
    protected boolean mo885f(CharSequence charSequence, int i, int i2) {
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
            if (!C2711t.m858b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
