package p034j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2620m implements InterfaceC2614g {

    /* renamed from: a */
    private final String f511a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2620m(String str) {
        this.f511a = str;
    }

    public String toString() {
        String replace = this.f511a.replace("'", "''");
        return "'" + replace + "'";
    }
}
