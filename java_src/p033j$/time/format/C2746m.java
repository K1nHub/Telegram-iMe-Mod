package p033j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2746m implements InterfaceC2740g {

    /* renamed from: a */
    private final String f596a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2746m(String str) {
        this.f596a = str;
    }

    public String toString() {
        String replace = this.f596a.replace("'", "''");
        return "'" + replace + "'";
    }
}
