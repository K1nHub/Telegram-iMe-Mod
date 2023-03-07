package p034j$.util.stream;

import p034j$.util.function.InterfaceC2469u;
/* renamed from: j$.util.stream.v */
/* loaded from: classes2.dex */
public final /* synthetic */ class C2764v implements InterfaceC2469u {

    /* renamed from: a */
    public static final /* synthetic */ C2764v f1058a = new C2764v();

    private /* synthetic */ C2764v() {
    }

    @Override // p034j$.util.function.InterfaceC2469u
    public final void accept(Object obj, double d) {
        double[] dArr = (double[]) obj;
        dArr[2] = dArr[2] + 1.0d;
        AbstractC2704l.m392b(dArr, d);
        dArr[3] = dArr[3] + d;
    }
}
