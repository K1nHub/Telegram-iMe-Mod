package p035j$.util.stream;

import p035j$.util.function.InterfaceC2683u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2978v implements InterfaceC2683u {

    /* renamed from: a */
    public static final /* synthetic */ C2978v f1069a = new C2978v();

    private /* synthetic */ C2978v() {
    }

    @Override // p035j$.util.function.InterfaceC2683u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2918l.m386b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
