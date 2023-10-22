package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2706p implements InterfaceC2698h {

    /* renamed from: a */
    private final String f553a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2706p(String str) {
        this.f553a = str;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: a */
    public boolean mo882a(C2712v c2712v, StringBuilder sb) {
        sb.append(this.f553a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2698h
    /* renamed from: b */
    public int mo881b(C2710t c2710t, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f553a;
        return !c2710t.m841r(charSequence, i, str, 0, str.length()) ? ~i : this.f553a.length() + i;
    }

    public String toString() {
        String replace = this.f553a.replace("'", "''");
        return "'" + replace + "'";
    }
}
