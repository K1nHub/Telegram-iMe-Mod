package io.grpc.okhttp;

import com.google.common.base.Preconditions;
import io.grpc.InternalMetadata;
import io.grpc.Metadata;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.TransportFrameUtil;
import io.grpc.okhttp.internal.framed.Header;
import java.util.ArrayList;
import java.util.List;
import okio.ByteString;
/* loaded from: classes6.dex */
class Headers {
    public static final Header CONTENT_TYPE_HEADER;
    public static final Header HTTPS_SCHEME_HEADER;
    public static final Header HTTP_SCHEME_HEADER;
    public static final Header METHOD_GET_HEADER;
    public static final Header METHOD_HEADER;
    public static final Header TE_HEADER;

    static {
        ByteString byteString = Header.TARGET_SCHEME;
        HTTPS_SCHEME_HEADER = new Header(byteString, "https");
        HTTP_SCHEME_HEADER = new Header(byteString, "http");
        ByteString byteString2 = Header.TARGET_METHOD;
        METHOD_HEADER = new Header(byteString2, "POST");
        METHOD_GET_HEADER = new Header(byteString2, "GET");
        CONTENT_TYPE_HEADER = new Header(GrpcUtil.CONTENT_TYPE_KEY.name(), "application/grpc");
        TE_HEADER = new Header("te", "trailers");
    }

    public static List<Header> createRequestHeaders(Metadata metadata, String str, String str2, String str3, boolean z, boolean z2) {
        Preconditions.checkNotNull(metadata, "headers");
        Preconditions.checkNotNull(str, "defaultPath");
        Preconditions.checkNotNull(str2, "authority");
        metadata.discardAll(GrpcUtil.CONTENT_TYPE_KEY);
        metadata.discardAll(GrpcUtil.TE_HEADER);
        Metadata.Key<String> key = GrpcUtil.USER_AGENT_KEY;
        metadata.discardAll(key);
        ArrayList arrayList = new ArrayList(InternalMetadata.headerCount(metadata) + 7);
        if (z2) {
            arrayList.add(HTTP_SCHEME_HEADER);
        } else {
            arrayList.add(HTTPS_SCHEME_HEADER);
        }
        if (z) {
            arrayList.add(METHOD_GET_HEADER);
        } else {
            arrayList.add(METHOD_HEADER);
        }
        arrayList.add(new Header(Header.TARGET_AUTHORITY, str2));
        arrayList.add(new Header(Header.TARGET_PATH, str));
        arrayList.add(new Header(key.name(), str3));
        arrayList.add(CONTENT_TYPE_HEADER);
        arrayList.add(TE_HEADER);
        byte[][] http2Headers = TransportFrameUtil.toHttp2Headers(metadata);
        for (int i = 0; i < http2Headers.length; i += 2) {
            ByteString m92of = ByteString.m92of(http2Headers[i]);
            if (isApplicationHeader(m92of.utf8())) {
                arrayList.add(new Header(m92of, ByteString.m92of(http2Headers[i + 1])));
            }
        }
        return arrayList;
    }

    private static boolean isApplicationHeader(String str) {
        return (str.startsWith(":") || GrpcUtil.CONTENT_TYPE_KEY.name().equalsIgnoreCase(str) || GrpcUtil.USER_AGENT_KEY.name().equalsIgnoreCase(str)) ? false : true;
    }
}
