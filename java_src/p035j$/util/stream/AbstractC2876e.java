package p035j$.util.stream;
/* renamed from: j$.util.stream.e */
/* loaded from: classes2.dex */
abstract class AbstractC2876e {

    /* renamed from: a */
    protected final int f933a;

    /* renamed from: b */
    protected int f934b;

    /* renamed from: c */
    protected int f935c;

    /* renamed from: d */
    protected long[] f936d;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2876e() {
        this.f933a = 4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractC2876e(int i) {
        if (i >= 0) {
            this.f933a = Math.max(4, 32 - Integer.numberOfLeadingZeros(i - 1));
            return;
        }
        throw new IllegalArgumentException("Illegal Capacity: " + i);
    }

    public abstract void clear();

    public long count() {
        int i = this.f935c;
        return i == 0 ? this.f934b : this.f936d[i] + this.f934b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: s */
    public int m425s(int i) {
        return 1 << ((i == 0 || i == 1) ? this.f933a : Math.min((this.f933a + i) - 1, 30));
    }
}
