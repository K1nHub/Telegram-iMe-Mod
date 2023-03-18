package p034j$.util.stream;

import p034j$.util.function.InterfaceC2593u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2888v implements InterfaceC2593u {

    /* renamed from: a */
    public static final /* synthetic */ C2888v f1063a = new C2888v();

    private /* synthetic */ C2888v() {
    }

    @Override // p034j$.util.function.InterfaceC2593u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2828l.m392b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
