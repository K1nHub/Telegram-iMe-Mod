package p034j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2581m implements InterfaceC2575g {

    /* renamed from: a */
    private final String f508a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2581m(String str) {
        this.f508a = str;
    }

    public String toString() {
        String replace = this.f508a.replace("'", "''");
        return "'" + replace + "'";
    }
}
