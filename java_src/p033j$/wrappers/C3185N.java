package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2823l;
/* renamed from: j$.wrappers.N */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3185N implements InterfaceC2823l {

    /* renamed from: a */
    final /* synthetic */ IntConsumer f1287a;

    private /* synthetic */ C3185N(IntConsumer intConsumer) {
        this.f1287a = intConsumer;
    }

    /* renamed from: b */
    public static /* synthetic */ InterfaceC2823l m236b(IntConsumer intConsumer) {
        if (intConsumer == null) {
            return null;
        }
        return intConsumer instanceof C3186O ? ((C3186O) intConsumer).f1288a : new C3185N(intConsumer);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    public /* synthetic */ void accept(int i) {
        this.f1287a.accept(i);
    }

    @Override // p033j$.util.function.InterfaceC2823l
    /* renamed from: k */
    public /* synthetic */ InterfaceC2823l mo235k(InterfaceC2823l interfaceC2823l) {
        return m236b(this.f1287a.andThen(C3186O.m234a(interfaceC2823l)));
    }
}
