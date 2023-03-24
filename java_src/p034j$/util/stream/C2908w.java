package p034j$.util.stream;

import p034j$.util.function.InterfaceC2607u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2908w implements InterfaceC2607u {

    /* renamed from: a */
    public static final /* synthetic */ C2908w f1072a = new C2908w();

    private /* synthetic */ C2908w() {
    }

    @Override // p034j$.util.function.InterfaceC2607u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2842l.m391b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
