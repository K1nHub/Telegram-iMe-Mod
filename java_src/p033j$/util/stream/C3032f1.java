package p033j$.util.stream;

import p033j$.util.function.Predicate;
/* renamed from: j$.util.stream.f1 */
/* loaded from: classes2.dex */
class C3032f1 extends AbstractC3056j1 {

    /* renamed from: c */
    final /* synthetic */ EnumC3062k1 f1078c;

    /* renamed from: d */
    final /* synthetic */ Predicate f1079d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3032f1(EnumC3062k1 enumC3062k1, Predicate predicate) {
        super(enumC3062k1);
        this.f1078c = enumC3062k1;
        this.f1079d = predicate;
    }

    @Override // p033j$.util.function.Consumer
    public void accept(Object obj) {
        boolean z;
        boolean z2;
        if (this.f1108a) {
            return;
        }
        boolean test = this.f1079d.test(obj);
        z = this.f1078c.f1114a;
        if (test == z) {
            this.f1108a = true;
            z2 = this.f1078c.f1115b;
            this.f1109b = z2;
        }
    }
}
