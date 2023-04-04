package io.grpc;

import io.grpc.Codec;
import java.util.concurrent.ConcurrentMap;
import p035j$.util.concurrent.ConcurrentHashMap;
/* loaded from: classes4.dex */
public final class CompressorRegistry {
    private static final CompressorRegistry DEFAULT_INSTANCE = new CompressorRegistry(new Codec.Gzip(), Codec.Identity.NONE);
    private final ConcurrentMap<String, Compressor> compressors = new ConcurrentHashMap();

    public static CompressorRegistry getDefaultInstance() {
        return DEFAULT_INSTANCE;
    }

    CompressorRegistry(Compressor... compressorArr) {
        for (Compressor compressor : compressorArr) {
            this.compressors.put(compressor.getMessageEncoding(), compressor);
        }
    }

    public Compressor lookupCompressor(String str) {
        return this.compressors.get(str);
    }
}
