package p033j$.time.format;
/* renamed from: j$.time.format.m */
/* loaded from: classes2.dex */
final class C2885m implements InterfaceC2879g {

    /* renamed from: a */
    private final String f606a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2885m(String str) {
        this.f606a = str;
    }

    public String toString() {
        String replace = this.f606a.replace("'", "''");
        return "'" + replace + "'";
    }
}
