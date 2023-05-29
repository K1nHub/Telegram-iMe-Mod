package p034j$.util.stream;

import p034j$.util.function.InterfaceC2714u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3009v implements InterfaceC2714u {

    /* renamed from: a */
    public static final /* synthetic */ C3009v f1067a = new C3009v();

    private /* synthetic */ C3009v() {
    }

    @Override // p034j$.util.function.InterfaceC2714u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2949l.m377b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
