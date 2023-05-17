package p034j$.util.stream;

import java.util.Arrays;
import p034j$.util.AbstractC2651I;
import p034j$.util.InterfaceC2727s;
import p034j$.util.InterfaceC3034t;
import p034j$.util.function.Consumer;
import p034j$.util.function.InterfaceC2701m;
import p034j$.util.function.InterfaceC2705q;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: j$.util.stream.l2 */
/* loaded from: classes2.dex */
public class C2947l2 implements InterfaceC3024y1 {

    /* renamed from: a */
    final long[] f991a;

    /* renamed from: b */
    int f992b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947l2(long j) {
        if (j >= 2147483639) {
            throw new IllegalArgumentException("Stream size exceeds max array size");
        }
        this.f991a = new long[(int) j];
        this.f992b = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2947l2(long[] jArr) {
        this.f991a = jArr;
        this.f992b = jArr.length;
    }

    @Override // p034j$.util.stream.InterfaceC3030z1, p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public InterfaceC3030z1 mo280b(int i) {
        throw new IndexOutOfBoundsException();
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public long count() {
        return this.f992b;
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: d */
    public void mo278d(Object obj, int i) {
        System.arraycopy(this.f991a, 0, (long[]) obj, i, this.f992b);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: e */
    public Object mo277e() {
        long[] jArr = this.f991a;
        int length = jArr.length;
        int i = this.f992b;
        return length == i ? jArr : Arrays.copyOf(jArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public /* synthetic */ void forEach(Consumer consumer) {
        AbstractC2964o1.m347m(this, consumer);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1
    /* renamed from: g */
    public void mo276g(Object obj) {
        InterfaceC2705q interfaceC2705q = (InterfaceC2705q) obj;
        for (int i = 0; i < this.f992b; i++) {
            interfaceC2705q.accept(this.f991a[i]);
        }
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: j */
    public /* synthetic */ void mo322i(Long[] lArr, int i) {
        AbstractC2964o1.m350j(this, lArr, i);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: k */
    public /* synthetic */ InterfaceC3024y1 mo318r(long j, long j2, InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m344p(this, j, j2, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: p */
    public /* synthetic */ int mo320p() {
        return 0;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: q */
    public /* synthetic */ Object[] mo319q(InterfaceC2701m interfaceC2701m) {
        return AbstractC2964o1.m353g(this, interfaceC2701m);
    }

    @Override // p034j$.util.stream.InterfaceC3030z1, p034j$.util.stream.InterfaceC2733A1
    public InterfaceC3034t spliterator() {
        return AbstractC2651I.m615l(this.f991a, 0, this.f992b, 1040);
    }

    public String toString() {
        return String.format("LongArrayNode[%d][%s]", Integer.valueOf(this.f991a.length - this.f992b), Arrays.toString(this.f991a));
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    /* renamed from: b */
    public /* bridge */ /* synthetic */ InterfaceC2733A1 mo280b(int i) {
        mo280b(i);
        throw null;
    }

    @Override // p034j$.util.stream.InterfaceC2733A1
    public InterfaceC2727s spliterator() {
        return AbstractC2651I.m615l(this.f991a, 0, this.f992b, 1040);
    }
}
