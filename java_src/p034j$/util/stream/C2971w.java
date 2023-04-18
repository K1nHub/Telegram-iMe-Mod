package p034j$.util.stream;

import p034j$.util.function.InterfaceC2670u;
/* renamed from: j$.util.stream.w */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2971w implements InterfaceC2670u {

    /* renamed from: a */
    public static final /* synthetic */ C2971w f1072a = new C2971w();

    private /* synthetic */ C2971w() {
    }

    @Override // p034j$.util.function.InterfaceC2670u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        AbstractC2905l.m372b(dArr, d);
        dArr[2] = dArr[2] + d;
    }
}
