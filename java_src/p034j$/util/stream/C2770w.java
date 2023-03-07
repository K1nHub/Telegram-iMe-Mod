package p034j$.util.stream;

import p034j$.util.function.InterfaceC2469u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2770w implements InterfaceC2469u {

    /* renamed from: a */
    public static final /* synthetic */ C2770w f1066a = new C2770w();

    private /* synthetic */ C2770w() {
    }

    @Override // p034j$.util.function.InterfaceC2469u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2704l.m392b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
