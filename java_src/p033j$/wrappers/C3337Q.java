package p033j$.wrappers;

import java.util.function.IntConsumer;
import p033j$.util.function.InterfaceC2965l;
/* renamed from: j$.wrappers.Q */
/* loaded from: classes2.dex */
public final /* synthetic */ class C3337Q implements IntConsumer {

    /* renamed from: a */
    final /* synthetic */ InterfaceC2965l f1255a;

    private /* synthetic */ C3337Q(InterfaceC2965l interfaceC2965l) {
        this.f1255a = interfaceC2965l;
    }

    /* renamed from: a */
    public static /* synthetic */ IntConsumer m182a(InterfaceC2965l interfaceC2965l) {
        if (interfaceC2965l == null) {
            return null;
        }
        return interfaceC2965l instanceof C3336P ? ((C3336P) interfaceC2965l).f1254a : new C3337Q(interfaceC2965l);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ void accept(int i) {
        this.f1255a.accept(i);
    }

    @Override // java.util.function.IntConsumer
    public /* synthetic */ IntConsumer andThen(IntConsumer intConsumer) {
        return m182a(this.f1255a.mo183l(C3336P.m184b(intConsumer)));
    }
}
