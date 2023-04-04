package p035j$.util.stream;

import p035j$.lang.AbstractC2571a;
import p035j$.lang.AbstractC2572b;
import p035j$.lang.AbstractC2573c;
import p035j$.util.function.Function;
import p035j$.util.function.InterfaceC2670h;
import p035j$.util.function.InterfaceC2676n;
import p035j$.util.function.InterfaceC2679q;
import p035j$.util.function.InterfaceC2680r;
import p035j$.util.function.InterfaceC2682t;
import p035j$.util.function.ToLongFunction;
import p035j$.wrappers.C3072i0;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.N */
/* loaded from: classes2.dex */
public class C2783N extends AbstractC2866c1 {

    /* renamed from: l */
    public final /* synthetic */ int f801l = 1;

    /* renamed from: m */
    final /* synthetic */ Object f802m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2816T abstractC2816T, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2670h interfaceC2670h) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = interfaceC2670h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // p035j$.util.stream.AbstractC2864c
    /* renamed from: H0 */
    public InterfaceC2928m3 mo292H0(int i, InterfaceC2928m3 interfaceC2928m3) {
        switch (this.f801l) {
            case 0:
                return new C2759J(this, interfaceC2928m3);
            case 1:
                return new C2736F0(this, interfaceC2928m3);
            case 2:
                return new C2847Z0(this, interfaceC2928m3);
            case 3:
                return new C2847Z0(this, interfaceC2928m3, (AbstractC2571a) null);
            case 4:
                return new C2847Z0(this, interfaceC2928m3, (AbstractC2572b) null);
            case 5:
                return new C2847Z0(this, interfaceC2928m3, (AbstractC2573c) null);
            case 6:
                return new C2954r(this, interfaceC2928m3);
            default:
                return new C2844Y2(this, interfaceC2928m3);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2772L0 abstractC2772L0, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2676n interfaceC2676n) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = interfaceC2676n;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2679q interfaceC2679q) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = interfaceC2679q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2680r interfaceC2680r) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = interfaceC2680r;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, InterfaceC2682t interfaceC2682t) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = interfaceC2682t;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2872d1 abstractC2872d1, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, C3072i0 c3072i0) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = c3072i0;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, Function function) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = function;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2783N(AbstractC2880e3 abstractC2880e3, AbstractC2864c abstractC2864c, EnumC2881e4 enumC2881e4, int i, ToLongFunction toLongFunction) {
        super(abstractC2864c, enumC2881e4, i);
        this.f802m = toLongFunction;
    }
}
