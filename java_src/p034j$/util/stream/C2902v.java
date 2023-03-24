package p034j$.util.stream;

import p034j$.util.function.InterfaceC2607u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2902v implements InterfaceC2607u {

    /* renamed from: a */
    public static final /* synthetic */ C2902v f1064a = new C2902v();

    private /* synthetic */ C2902v() {
    }

    @Override // p034j$.util.function.InterfaceC2607u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2842l.m391b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
