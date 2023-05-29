package p034j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2625m implements InterfaceC2619g {

    /* renamed from: a */
    private final String f511a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2625m(String str) {
        this.f511a = str;
    }

    public String toString() {
        String replace = this.f511a.replace("'", "''");
        return "'" + replace + "'";
    }
}
