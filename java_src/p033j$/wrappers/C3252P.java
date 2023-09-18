package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2881l;
/* renamed from: j$.wrappers.P */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3252P implements InterfaceC2881l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1245a;

    private /* synthetic */ C3252P(IntConsumer intConsumer) {
        this.f1245a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2881l m184b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3253Q ? ((C3253Q) intConsumer).f1246a : new C3252P(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    public /* synthetic */ void accept(int i) {
        this.f1245a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2881l
    /* renamed from: l */
    public /* synthetic */ InterfaceC2881l mo183l(InterfaceC2881l interfaceC2881l) {
        return m184b(this.f1245a.andThen(C3253Q.m182a(interfaceC2881l)));
    }
}
