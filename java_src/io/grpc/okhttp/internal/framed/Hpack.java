package io.grpc.okhttp.internal.framed;

import com.google.android.exoplayer2.source.rtsp.SessionDescription;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Source;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public final class Hpack {
    private static final Map<ByteString, Integer> NAME_TO_FIRST_INDEX;
    private static final ByteString PSEUDO_PREFIX = ByteString.encodeUtf8(":");
    private static final Header[] STATIC_HEADER_TABLE;

    static {
        ByteString byteString = Header.TARGET_METHOD;
        ByteString byteString2 = Header.TARGET_PATH;
        ByteString byteString3 = Header.TARGET_SCHEME;
        ByteString byteString4 = Header.RESPONSE_STATUS;
        STATIC_HEADER_TABLE = new Header[]{new Header(Header.TARGET_AUTHORITY, ""), new Header(byteString, "GET"), new Header(byteString, "POST"), new Header(byteString2, "/"), new Header(byteString2, "/index.html"), new Header(byteString3, "http"), new Header(byteString3, "https"), new Header(byteString4, "200"), new Header(byteString4, "204"), new Header(byteString4, "206"), new Header(byteString4, "304"), new Header(byteString4, "400"), new Header(byteString4, "404"), new Header(byteString4, "500"), new Header("accept-charset", ""), new Header("accept-encoding", "gzip, deflate"), new Header("accept-language", ""), new Header("accept-ranges", ""), new Header("accept", ""), new Header("access-control-allow-origin", ""), new Header("age", ""), new Header("allow", ""), new Header("authorization", ""), new Header("cache-control", ""), new Header("content-disposition", ""), new Header("content-encoding", ""), new Header("content-language", ""), new Header("content-length", ""), new Header("content-location", ""), new Header("content-range", ""), new Header("content-type", ""), new Header("cookie", ""), new Header("date", ""), new Header("etag", ""), new Header("expect", ""), new Header("expires", ""), new Header("from", ""), new Header("host", ""), new Header("if-match", ""), new Header("if-modified-since", ""), new Header("if-none-match", ""), new Header("if-range", ""), new Header("if-unmodified-since", ""), new Header("last-modified", ""), new Header("link", ""), new Header("location", ""), new Header("max-forwards", ""), new Header("proxy-authenticate", ""), new Header("proxy-authorization", ""), new Header(SessionDescription.ATTR_RANGE, ""), new Header("referer", ""), new Header("refresh", ""), new Header("retry-after", ""), new Header("server", ""), new Header("set-cookie", ""), new Header("strict-transport-security", ""), new Header("transfer-encoding", ""), new Header("user-agent", ""), new Header("vary", ""), new Header("via", ""), new Header("www-authenticate", "")};
        NAME_TO_FIRST_INDEX = nameToFirstIndex();
    }

    /* loaded from: classes4.dex */
    static final class Reader {
        Header[] dynamicTable;
        int dynamicTableByteCount;
        int dynamicTableHeaderCount;
        private final List<Header> headerList;
        private int headerTableSizeSetting;
        private int maxDynamicTableByteCount;
        int nextDynamicTableIndex;
        private final BufferedSource source;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Reader(int i, Source source) {
            this(i, i, source);
        }

        Reader(int i, int i2, Source source) {
            this.headerList = new ArrayList();
            Header[] headerArr = new Header[8];
            this.dynamicTable = headerArr;
            this.nextDynamicTableIndex = headerArr.length - 1;
            this.dynamicTableHeaderCount = 0;
            this.dynamicTableByteCount = 0;
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i2;
            this.source = Okio.buffer(source);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void headerTableSizeSetting(int i) {
            this.headerTableSizeSetting = i;
            this.maxDynamicTableByteCount = i;
            adjustDynamicTableByteCount();
        }

        private void adjustDynamicTableByteCount() {
            int i = this.maxDynamicTableByteCount;
            int i2 = this.dynamicTableByteCount;
            if (i < i2) {
                if (i == 0) {
                    clearDynamicTable();
                } else {
                    evictToRecoverBytes(i2 - i);
                }
            }
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextDynamicTableIndex = this.dynamicTable.length - 1;
            this.dynamicTableHeaderCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i2 = this.nextDynamicTableIndex;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header[] headerArr = this.dynamicTable;
                    i -= headerArr[length].hpackSize;
                    this.dynamicTableByteCount -= headerArr[length].hpackSize;
                    this.dynamicTableHeaderCount--;
                    i3++;
                }
                Header[] headerArr2 = this.dynamicTable;
                System.arraycopy(headerArr2, i2 + 1, headerArr2, i2 + 1 + i3, this.dynamicTableHeaderCount);
                this.nextDynamicTableIndex += i3;
            }
            return i3;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void readHeaders() throws IOException {
            while (!this.source.exhausted()) {
                int readByte = this.source.readByte() & 255;
                if (readByte == 128) {
                    throw new IOException("index == 0");
                }
                if ((readByte & 128) == 128) {
                    readIndexedHeader(readInt(readByte, 127) - 1);
                } else if (readByte == 64) {
                    readLiteralHeaderWithIncrementalIndexingNewName();
                } else if ((readByte & 64) == 64) {
                    readLiteralHeaderWithIncrementalIndexingIndexedName(readInt(readByte, 63) - 1);
                } else if ((readByte & 32) == 32) {
                    int readInt = readInt(readByte, 31);
                    this.maxDynamicTableByteCount = readInt;
                    if (readInt < 0 || readInt > this.headerTableSizeSetting) {
                        throw new IOException("Invalid dynamic table size update " + this.maxDynamicTableByteCount);
                    }
                    adjustDynamicTableByteCount();
                } else if (readByte == 16 || readByte == 0) {
                    readLiteralHeaderWithoutIndexingNewName();
                } else {
                    readLiteralHeaderWithoutIndexingIndexedName(readInt(readByte, 15) - 1);
                }
            }
        }

        public List<Header> getAndResetHeaderList() {
            ArrayList arrayList = new ArrayList(this.headerList);
            this.headerList.clear();
            return arrayList;
        }

        private void readIndexedHeader(int i) throws IOException {
            if (isStaticHeader(i)) {
                this.headerList.add(Hpack.STATIC_HEADER_TABLE[i]);
                return;
            }
            int dynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
            if (dynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (dynamicTableIndex <= headerArr.length - 1) {
                    this.headerList.add(headerArr[dynamicTableIndex]);
                    return;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private int dynamicTableIndex(int i) {
            return this.nextDynamicTableIndex + 1 + i;
        }

        private void readLiteralHeaderWithoutIndexingIndexedName(int i) throws IOException {
            this.headerList.add(new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithoutIndexingNewName() throws IOException {
            this.headerList.add(new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingIndexedName(int i) throws IOException {
            insertIntoDynamicTable(-1, new Header(getName(i), readByteString()));
        }

        private void readLiteralHeaderWithIncrementalIndexingNewName() throws IOException {
            insertIntoDynamicTable(-1, new Header(Hpack.checkLowercase(readByteString()), readByteString()));
        }

        private ByteString getName(int i) throws IOException {
            if (isStaticHeader(i)) {
                return Hpack.STATIC_HEADER_TABLE[i].name;
            }
            int dynamicTableIndex = dynamicTableIndex(i - Hpack.STATIC_HEADER_TABLE.length);
            if (dynamicTableIndex >= 0) {
                Header[] headerArr = this.dynamicTable;
                if (dynamicTableIndex < headerArr.length) {
                    return headerArr[dynamicTableIndex].name;
                }
            }
            throw new IOException("Header index too large " + (i + 1));
        }

        private boolean isStaticHeader(int i) {
            return i >= 0 && i <= Hpack.STATIC_HEADER_TABLE.length - 1;
        }

        private void insertIntoDynamicTable(int i, Header header) {
            this.headerList.add(header);
            int i2 = header.hpackSize;
            if (i != -1) {
                i2 -= this.dynamicTable[dynamicTableIndex(i)].hpackSize;
            }
            int i3 = this.maxDynamicTableByteCount;
            if (i2 > i3) {
                clearDynamicTable();
                return;
            }
            int evictToRecoverBytes = evictToRecoverBytes((this.dynamicTableByteCount + i2) - i3);
            if (i == -1) {
                int i4 = this.dynamicTableHeaderCount + 1;
                Header[] headerArr = this.dynamicTable;
                if (i4 > headerArr.length) {
                    Header[] headerArr2 = new Header[headerArr.length * 2];
                    System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                    this.nextDynamicTableIndex = this.dynamicTable.length - 1;
                    this.dynamicTable = headerArr2;
                }
                int i5 = this.nextDynamicTableIndex;
                this.nextDynamicTableIndex = i5 - 1;
                this.dynamicTable[i5] = header;
                this.dynamicTableHeaderCount++;
            } else {
                this.dynamicTable[i + dynamicTableIndex(i) + evictToRecoverBytes] = header;
            }
            this.dynamicTableByteCount += i2;
        }

        private int readByte() throws IOException {
            return this.source.readByte() & 255;
        }

        int readInt(int i, int i2) throws IOException {
            int i3 = i & i2;
            if (i3 < i2) {
                return i3;
            }
            int i4 = 0;
            while (true) {
                int readByte = readByte();
                if ((readByte & 128) == 0) {
                    return i2 + (readByte << i4);
                }
                i2 += (readByte & 127) << i4;
                i4 += 7;
            }
        }

        ByteString readByteString() throws IOException {
            int readByte = readByte();
            boolean z = (readByte & 128) == 128;
            int readInt = readInt(readByte, 127);
            if (z) {
                return ByteString.m84of(Huffman.get().decode(this.source.readByteArray(readInt)));
            }
            return this.source.readByteString(readInt);
        }
    }

    private static Map<ByteString, Integer> nameToFirstIndex() {
        LinkedHashMap linkedHashMap = new LinkedHashMap(STATIC_HEADER_TABLE.length);
        int i = 0;
        while (true) {
            Header[] headerArr = STATIC_HEADER_TABLE;
            if (i < headerArr.length) {
                if (!linkedHashMap.containsKey(headerArr[i].name)) {
                    linkedHashMap.put(headerArr[i].name, Integer.valueOf(i));
                }
                i++;
            } else {
                return Collections.unmodifiableMap(linkedHashMap);
            }
        }
    }

    /* loaded from: classes4.dex */
    static final class Writer {
        Header[] dynamicTable;
        private int dynamicTableByteCount;
        int dynamicTableHeaderCount;
        private boolean emitDynamicTableSizeUpdate;
        private int maxDynamicTableByteCount;
        private int nextDynamicTableIndex;
        private final Buffer out;
        private int smallestHeaderTableSizeSetting;
        private boolean useCompression;

        /* JADX INFO: Access modifiers changed from: package-private */
        public Writer(Buffer buffer) {
            this(4096, false, buffer);
        }

        Writer(int i, boolean z, Buffer buffer) {
            this.smallestHeaderTableSizeSetting = Integer.MAX_VALUE;
            Header[] headerArr = new Header[8];
            this.dynamicTable = headerArr;
            this.nextDynamicTableIndex = headerArr.length - 1;
            this.maxDynamicTableByteCount = i;
            this.useCompression = z;
            this.out = buffer;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0078  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x00b0  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x00b8  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void writeHeaders(java.util.List<io.grpc.okhttp.internal.framed.Header> r14) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 246
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.grpc.okhttp.internal.framed.Hpack.Writer.writeHeaders(java.util.List):void");
        }

        void writeInt(int i, int i2, int i3) throws IOException {
            if (i < i2) {
                this.out.writeByte(i | i3);
                return;
            }
            this.out.writeByte(i3 | i2);
            int i4 = i - i2;
            while (i4 >= 128) {
                this.out.writeByte(128 | (i4 & 127));
                i4 >>>= 7;
            }
            this.out.writeByte(i4);
        }

        void writeByteString(ByteString byteString) throws IOException {
            if (this.useCompression && Huffman.get().encodedLength(byteString.toByteArray()) < byteString.size()) {
                Buffer buffer = new Buffer();
                Huffman.get().encode(byteString.toByteArray(), buffer.outputStream());
                ByteString readByteString = buffer.readByteString();
                writeInt(readByteString.size(), 127, 128);
                this.out.write(readByteString);
                return;
            }
            writeInt(byteString.size(), 127, 0);
            this.out.write(byteString);
        }

        private void clearDynamicTable() {
            Arrays.fill(this.dynamicTable, (Object) null);
            this.nextDynamicTableIndex = this.dynamicTable.length - 1;
            this.dynamicTableHeaderCount = 0;
            this.dynamicTableByteCount = 0;
        }

        private int evictToRecoverBytes(int i) {
            int i2;
            int i3 = 0;
            if (i > 0) {
                int length = this.dynamicTable.length;
                while (true) {
                    length--;
                    i2 = this.nextDynamicTableIndex;
                    if (length < i2 || i <= 0) {
                        break;
                    }
                    Header[] headerArr = this.dynamicTable;
                    i -= headerArr[length].hpackSize;
                    this.dynamicTableByteCount -= headerArr[length].hpackSize;
                    this.dynamicTableHeaderCount--;
                    i3++;
                }
                Header[] headerArr2 = this.dynamicTable;
                System.arraycopy(headerArr2, i2 + 1, headerArr2, i2 + 1 + i3, this.dynamicTableHeaderCount);
                this.nextDynamicTableIndex += i3;
            }
            return i3;
        }

        private void insertIntoDynamicTable(Header header) {
            int i = header.hpackSize;
            int i2 = this.maxDynamicTableByteCount;
            if (i > i2) {
                clearDynamicTable();
                return;
            }
            evictToRecoverBytes((this.dynamicTableByteCount + i) - i2);
            int i3 = this.dynamicTableHeaderCount + 1;
            Header[] headerArr = this.dynamicTable;
            if (i3 > headerArr.length) {
                Header[] headerArr2 = new Header[headerArr.length * 2];
                System.arraycopy(headerArr, 0, headerArr2, headerArr.length, headerArr.length);
                this.nextDynamicTableIndex = this.dynamicTable.length - 1;
                this.dynamicTable = headerArr2;
            }
            int i4 = this.nextDynamicTableIndex;
            this.nextDynamicTableIndex = i4 - 1;
            this.dynamicTable[i4] = header;
            this.dynamicTableHeaderCount++;
            this.dynamicTableByteCount += i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ByteString checkLowercase(ByteString byteString) throws IOException {
        int size = byteString.size();
        for (int i = 0; i < size; i++) {
            byte b = byteString.getByte(i);
            if (b >= 65 && b <= 90) {
                throw new IOException("PROTOCOL_ERROR response malformed: mixed case name: " + byteString.utf8());
            }
        }
        return byteString;
    }
}
