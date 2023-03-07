package p034j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2380m implements InterfaceC2374g {

    /* renamed from: a */
    private final String f502a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2380m(String str) {
        this.f502a = str;
    }

    public String toString() {
        String replace = this.f502a.replace("'", "''");
        return "'" + replace + "'";
    }
}
