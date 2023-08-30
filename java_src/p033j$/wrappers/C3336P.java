package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3336P implements InterfaceC2965l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1254a;

    private /* synthetic */ C3336P(IntConsumer intConsumer) {
        this.f1254a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2965l m184b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3337Q ? ((C3337Q) intConsumer).f1255a : new C3336P(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    public /* synthetic */ void accept(int i) {
        this.f1254a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2965l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2965l mo183l(InterfaceC2965l interfaceC2965l) {
        return m184b(this.f1254a.andThen(C3337Q.m182a(interfaceC2965l)));
    }
}
