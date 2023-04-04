package p035j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2594m implements InterfaceC2588g {

    /* renamed from: a */
    private final String f513a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2594m(String str) {
        this.f513a = str;
    }

    public String toString() {
        String replace = this.f513a.replace("'", "''");
        return "'" + replace + "'";
    }
}
