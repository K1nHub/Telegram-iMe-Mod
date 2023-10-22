package org.ton.tlb;

import java.util.Map;
import kotlin.Pair;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KClass;
import org.ton.bitstring.BitString;
import org.ton.cell.CellBuilder;
import org.ton.cell.CellSlice;
import org.ton.tlb.exception.UnknownTlbConstructorException;
import org.ton.tlb.providers.TlbCombinatorProvider;
import org.ton.tlb.providers.TlbConstructorProvider;
/* compiled from: TlbCombinator.kt */
/* loaded from: classes6.dex */
public abstract class TlbCombinator<T> extends AbstractTlbCombinator<T> implements TlbCombinatorProvider<T> {
    private final KClass<T> baseClass;
    private final Map<KClass<? extends T>, TlbCodec<? extends T>> class2codec;
    private final TlbTrie<TlbCodec<? extends T>> trie;

    @Override // org.ton.tlb.providers.TlbCombinatorProvider
    public TlbCombinator<T> tlbCombinator() {
        return this;
    }

    public TlbCombinator(KClass<T> baseClass, Pair<? extends KClass<? extends T>, ? extends TlbCodec<? extends T>>... subClasses) {
        Map map;
        Map<KClass<? extends T>, TlbCodec<? extends T>> mutableMap;
        Intrinsics.checkNotNullParameter(baseClass, "baseClass");
        Intrinsics.checkNotNullParameter(subClasses, "subClasses");
        this.baseClass = baseClass;
        this.trie = new TlbTrie<>(null, null, null, 7, null);
        map = MapsKt__MapsKt.toMap(subClasses);
        mutableMap = MapsKt__MapsKt.toMutableMap(map);
        this.class2codec = mutableMap;
        for (Pair<? extends KClass<? extends T>, ? extends TlbCodec<? extends T>> pair : subClasses) {
            TlbCodec<? extends T> component2 = pair.component2();
            if (component2 instanceof TlbConstructor) {
                addConstructor((TlbConstructor) component2);
            } else if (component2 instanceof TlbConstructorProvider) {
                addConstructor(((TlbConstructorProvider) component2).tlbConstructor());
            } else if (component2 instanceof TlbCombinator) {
                addCombinator((TlbCombinator) component2);
            } else if (component2 instanceof TlbCombinatorProvider) {
                addCombinator(((TlbCombinatorProvider) component2).tlbCombinator());
            }
        }
    }

    private final void addConstructor(TlbConstructor<? extends T> tlbConstructor) {
        this.trie.set(tlbConstructor.getId(), tlbConstructor);
    }

    private final void addCombinator(TlbCombinator<? extends T> tlbCombinator) {
        for (Map.Entry<KClass<? extends Object>, TlbCodec<? extends Object>> entry : tlbCombinator.class2codec.entrySet()) {
            TlbCodec<? extends Object> value = entry.getValue();
            if (value instanceof TlbConstructor) {
                addConstructor((TlbConstructor) value);
            } else if (value instanceof TlbConstructorProvider) {
                addConstructor(((TlbConstructorProvider) value).tlbConstructor());
            }
        }
        this.class2codec.putAll(tlbCombinator.class2codec);
    }

    @Override // org.ton.tlb.TlbLoader
    public T loadTlb(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        TlbLoader<? extends T> findTlbLoaderOrNull = findTlbLoaderOrNull(cellSlice);
        if (findTlbLoaderOrNull == null) {
            throw new UnknownTlbConstructorException(cellSlice.preloadBits(32));
        }
        if (findTlbLoaderOrNull instanceof TlbConstructor) {
            cellSlice.skipBits(((TlbConstructor) findTlbLoaderOrNull).getId().getSize());
        }
        return findTlbLoaderOrNull.loadTlb(cellSlice);
    }

    @Override // org.ton.tlb.TlbStorer
    public void storeTlb(CellBuilder cellBuilder, T value) {
        Intrinsics.checkNotNullParameter(cellBuilder, "cellBuilder");
        Intrinsics.checkNotNullParameter(value, "value");
        TlbStorer<T> findTlbStorerOrNull = findTlbStorerOrNull(value);
        if (findTlbStorerOrNull == null) {
            throw new UnknownTlbConstructorException(null, 1, null);
        }
        if (findTlbStorerOrNull instanceof TlbConstructorProvider) {
            cellBuilder.storeBits(((TlbConstructorProvider) findTlbStorerOrNull).tlbConstructor().getId());
        } else if (findTlbStorerOrNull instanceof TlbConstructor) {
            cellBuilder.storeBits(((TlbConstructor) findTlbStorerOrNull).getId());
        }
        findTlbStorerOrNull.storeTlb(cellBuilder, value);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TlbLoader<? extends T> findTlbLoaderOrNull(CellSlice cellSlice) {
        Intrinsics.checkNotNullParameter(cellSlice, "cellSlice");
        return this.trie.get(cellSlice.getBits(), cellSlice.getBitsPosition());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TlbStorer<T> findTlbStorerOrNull(T value) {
        Intrinsics.checkNotNullParameter(value, "value");
        TlbCodec<? extends T> tlbCodec = this.class2codec.get(Reflection.getOrCreateKotlinClass(value.getClass()));
        if (tlbCodec == null) {
            return null;
        }
        return tlbCodec;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TlbCombinator.kt */
    /* loaded from: classes6.dex */
    public static final class TlbTrie<T> {
        private TlbTrie<T> left;
        private TlbTrie<T> right;
        private T value;

        public TlbTrie() {
            this(null, null, null, 7, null);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof TlbTrie) {
                TlbTrie tlbTrie = (TlbTrie) obj;
                return Intrinsics.areEqual(this.left, tlbTrie.left) && Intrinsics.areEqual(this.right, tlbTrie.right) && Intrinsics.areEqual(this.value, tlbTrie.value);
            }
            return false;
        }

        public int hashCode() {
            TlbTrie<T> tlbTrie = this.left;
            int hashCode = (tlbTrie == null ? 0 : tlbTrie.hashCode()) * 31;
            TlbTrie<T> tlbTrie2 = this.right;
            int hashCode2 = (hashCode + (tlbTrie2 == null ? 0 : tlbTrie2.hashCode())) * 31;
            T t = this.value;
            return hashCode2 + (t != null ? t.hashCode() : 0);
        }

        public String toString() {
            return "TlbTrie(left=" + this.left + ", right=" + this.right + ", value=" + this.value + ')';
        }

        public TlbTrie(TlbTrie<T> tlbTrie, TlbTrie<T> tlbTrie2, T t) {
            this.left = tlbTrie;
            this.right = tlbTrie2;
            this.value = t;
        }

        public /* synthetic */ TlbTrie(TlbTrie tlbTrie, TlbTrie tlbTrie2, Object obj, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this((i & 1) != 0 ? null : tlbTrie, (i & 2) != 0 ? null : tlbTrie2, (i & 4) != 0 ? null : obj);
        }

        public final void set(BitString key, T t) {
            TlbTrie<T> tlbTrie;
            Intrinsics.checkNotNullParameter(key, "key");
            int size = key.getSize();
            TlbTrie<T> tlbTrie2 = this;
            for (int i = 0; i < size; i++) {
                if (key.get(i)) {
                    tlbTrie = tlbTrie2.right;
                    if (tlbTrie == null) {
                        tlbTrie = new TlbTrie<>(null, null, null, 7, null);
                        tlbTrie2.right = tlbTrie;
                    }
                } else {
                    tlbTrie = tlbTrie2.left;
                    if (tlbTrie == null) {
                        tlbTrie = new TlbTrie<>(null, null, null, 7, null);
                        tlbTrie2.left = tlbTrie;
                    }
                }
                tlbTrie2 = tlbTrie;
            }
            tlbTrie2.value = t;
        }

        public final T get(BitString key, int i) {
            TlbTrie<T> tlbTrie;
            Intrinsics.checkNotNullParameter(key, "key");
            int size = key.getSize();
            TlbTrie<T> tlbTrie2 = this;
            while (i < size) {
                if (key.get(i)) {
                    tlbTrie = tlbTrie2.right;
                    if (tlbTrie == null) {
                        break;
                    }
                    tlbTrie2 = tlbTrie;
                    i++;
                } else {
                    tlbTrie = tlbTrie2.left;
                    if (tlbTrie == null) {
                        break;
                    }
                    tlbTrie2 = tlbTrie;
                    i++;
                }
            }
            return tlbTrie2.value;
        }
    }
}
