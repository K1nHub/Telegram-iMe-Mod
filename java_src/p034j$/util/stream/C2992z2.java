package p034j$.util.stream;

import p034j$.util.function.BiConsumer;
import p034j$.util.function.BiFunction;
import p034j$.util.function.InterfaceC2651b;
import p034j$.util.function.InterfaceC2670u;
import p034j$.util.function.InterfaceC2671v;
import p034j$.util.function.InterfaceC2672w;
import p034j$.util.function.InterfaceC2674y;
/* renamed from: j$.util.stream.z2 */
/* loaded from: classes2.dex */
class C2992z2 extends AbstractC2811U2 {

    /* renamed from: b */
    public final /* synthetic */ int f1097b = 3;

    /* renamed from: c */
    final /* synthetic */ Object f1098c;

    /* renamed from: d */
    final /* synthetic */ Object f1099d;

    /* renamed from: e */
    final /* synthetic */ Object f1100e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992z2(EnumC2868e4 enumC2868e4, BiConsumer biConsumer, BiConsumer biConsumer2, InterfaceC2674y interfaceC2674y) {
        super(enumC2868e4);
        this.f1098c = biConsumer;
        this.f1099d = biConsumer2;
        this.f1100e = interfaceC2674y;
    }

    @Override // p034j$.util.stream.AbstractC2811U2
    /* renamed from: a */
    public InterfaceC2801S2 mo270a() {
        switch (this.f1097b) {
            case 0:
                return new C2695A2((InterfaceC2674y) this.f1100e, (InterfaceC2672w) this.f1099d, (InterfaceC2651b) this.f1098c);
            case 1:
                return new C2725F2((InterfaceC2674y) this.f1100e, (InterfaceC2670u) this.f1099d, (InterfaceC2651b) this.f1098c);
            case 2:
                return new C2731G2(this.f1100e, (BiFunction) this.f1099d, (InterfaceC2651b) this.f1098c);
            case 3:
                return new C2755K2((InterfaceC2674y) this.f1100e, (BiConsumer) this.f1099d, (BiConsumer) this.f1098c);
            default:
                return new C2779O2((InterfaceC2674y) this.f1100e, (InterfaceC2671v) this.f1099d, (InterfaceC2651b) this.f1098c);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992z2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b, BiFunction biFunction, Object obj) {
        super(enumC2868e4);
        this.f1098c = interfaceC2651b;
        this.f1099d = biFunction;
        this.f1100e = obj;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992z2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b, InterfaceC2670u interfaceC2670u, InterfaceC2674y interfaceC2674y) {
        super(enumC2868e4);
        this.f1098c = interfaceC2651b;
        this.f1099d = interfaceC2670u;
        this.f1100e = interfaceC2674y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992z2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b, InterfaceC2671v interfaceC2671v, InterfaceC2674y interfaceC2674y) {
        super(enumC2868e4);
        this.f1098c = interfaceC2651b;
        this.f1099d = interfaceC2671v;
        this.f1100e = interfaceC2674y;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2992z2(EnumC2868e4 enumC2868e4, InterfaceC2651b interfaceC2651b, InterfaceC2672w interfaceC2672w, InterfaceC2674y interfaceC2674y) {
        super(enumC2868e4);
        this.f1098c = interfaceC2651b;
        this.f1099d = interfaceC2672w;
        this.f1100e = interfaceC2674y;
    }
}
