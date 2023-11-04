package p033j$.time.format;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.time.format.p */
/* loaded from: classes2.dex */
public final class C2710p implements InterfaceC2702h {

    /* renamed from: a */
    private final String f553a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2710p(String str) {
        this.f553a = str;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: a */
    public boolean mo883a(C2716v c2716v, StringBuilder sb) {
        sb.append(this.f553a);
        return true;
    }

    @Override // p033j$.time.format.InterfaceC2702h
    /* renamed from: b */
    public int mo882b(C2714t c2714t, CharSequence charSequence, int i) {
        if (i > charSequence.length() || i < 0) {
            throw new IndexOutOfBoundsException();
        }
        String str = this.f553a;
        return !c2714t.m842r(charSequence, i, str, 0, str.length()) ? ~i : this.f553a.length() + i;
    }

    public String toString() {
        String replace = this.f553a.replace("'", "''");
        return "'" + replace + "'";
    }
}
