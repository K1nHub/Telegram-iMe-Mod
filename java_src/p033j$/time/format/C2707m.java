package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
public class C2707m extends C2708n {
    private C2707m(String str, String str2, C2708n c2708n) {
        super(str, str2, c2708n, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2707m(String str, String str2, C2708n c2708n, C2697c c2697c) {
        super(str, null, null, null);
    }

    @Override // p033j$.time.format.C2708n
    /* renamed from: b */
    protected boolean mo889b(char c, char c2) {
        return C2714t.m858b(c, c2);
    }

    @Override // p033j$.time.format.C2708n
    /* renamed from: d */
    protected C2708n mo887d(String str, String str2, C2708n c2708n) {
        return new C2707m(str, str2, c2708n);
    }

    @Override // p033j$.time.format.C2708n
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
            if (!C2714t.m858b(this.f547a.charAt(i3), charSequence.charAt(i))) {
                return false;
            }
            i = i6;
            length = i4;
            i3 = i5;
        }
    }
}
