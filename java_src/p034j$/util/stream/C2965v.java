package p034j$.util.stream;

import p034j$.util.function.InterfaceC2670u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2965v implements InterfaceC2670u {

    /* renamed from: a */
    public static final /* synthetic */ C2965v f1064a = new C2965v();

    private /* synthetic */ C2965v() {
    }

    @Override // p034j$.util.function.InterfaceC2670u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2905l.m372b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}