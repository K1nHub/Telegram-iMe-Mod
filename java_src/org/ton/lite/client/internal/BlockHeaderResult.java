package org.ton.lite.client.internal;

import com.iMe.feature.profile.ProfileData$$ExternalSyntheticBackport0;
import kotlin.jvm.internal.Intrinsics;
import org.ton.bitstring.BitString;
/* compiled from: BlockHeaderResult.kt */
/* loaded from: classes6.dex */
public final class BlockHeaderResult {

    /* renamed from: lt */
    private final long f2120lt;
    private final BitString stateHash;
    private final int time;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof BlockHeaderResult) {
            BlockHeaderResult blockHeaderResult = (BlockHeaderResult) obj;
            return this.time == blockHeaderResult.time && this.f2120lt == blockHeaderResult.f2120lt && Intrinsics.areEqual(this.stateHash, blockHeaderResult.stateHash);
        }
        return false;
    }

    public int hashCode() {
        int m1020m = ((this.time * 31) + ProfileData$$ExternalSyntheticBackport0.m1020m(this.f2120lt)) * 31;
        BitString bitString = this.stateHash;
        return m1020m + (bitString == null ? 0 : bitString.hashCode());
    }

    public String toString() {
        return "BlockHeaderResult(time=" + this.time + ", lt=" + this.f2120lt + ", stateHash=" + this.stateHash + ')';
    }

    public BlockHeaderResult(int i, long j, BitString bitString) {
        this.time = i;
        this.f2120lt = j;
        this.stateHash = bitString;
    }

    public final BitString getStateHash() {
        return this.stateHash;
    }
}
