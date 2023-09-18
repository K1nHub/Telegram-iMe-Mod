package p033j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2801m implements InterfaceC2795g {

    /* renamed from: a */
    private final String f597a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2801m(String str) {
        this.f597a = str;
    }

    public String toString() {
        String replace = this.f597a.replace("'", "''");
        return "'" + replace + "'";
    }
}
