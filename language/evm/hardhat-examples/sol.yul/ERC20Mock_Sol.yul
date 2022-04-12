/*=====================================================*
 *                       WARNING                       *
 *  Solidity to Yul compilation is still EXPERIMENTAL  *
 *       It can result in LOSS OF FUNDS or worse       *
 *                !USE AT YOUR OWN RISK!               *
 *=====================================================*/


/// @use-src 0:"contracts/ERC20Mock_Sol.sol", 1:"node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol", 2:"node_modules/@openzeppelin/contracts/token/ERC20/IERC20.sol", 3:"node_modules/@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol", 4:"node_modules/@openzeppelin/contracts/utils/Context.sol"
object "ERC20Mock_Sol_84" {
    code {
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."
        mstore(64, memoryguard(128))

        let _1, _2, _3, _4 := copy_arguments_for_constructor_25_object_ERC20Mock_Sol_84()
        constructor_ERC20Mock_Sol_84(_1, _2, _3, _4)

        let _5 := allocate_unbounded()
        codecopy(_5, dataoffset("ERC20Mock_Sol_84_deployed"), datasize("ERC20Mock_Sol_84_deployed"))

        return(_5, datasize("ERC20Mock_Sol_84_deployed"))

        function allocate_unbounded() -> memPtr {
            memPtr := mload(64)
        }

        function round_up_to_mul_of_32(value) -> result {
            result := and(add(value, 31), not(31))
        }

        function panic_error_0x41() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x41)
            revert(0, 0x24)
        }

        function finalize_allocation(memPtr, size) {
            let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
            // protect against overflow
            if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
            mstore(64, newFreePtr)
        }

        function allocate_memory(size) -> memPtr {
            memPtr := allocate_unbounded()
            finalize_allocation(memPtr, size)
        }

        function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
            revert(0, 0)
        }

        function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
            revert(0, 0)
        }

        function revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() {
            revert(0, 0)
        }

        function revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() {
            revert(0, 0)
        }

        function array_allocation_size_t_string_memory_ptr(length) -> size {
            // Make sure we can allocate memory without overflow
            if gt(length, 0xffffffffffffffff) { panic_error_0x41() }

            size := round_up_to_mul_of_32(length)

            // add length slot
            size := add(size, 0x20)

        }

        function copy_memory_to_memory(src, dst, length) {
            let i := 0
            for { } lt(i, length) { i := add(i, 32) }
            {
                mstore(add(dst, i), mload(add(src, i)))
            }
            if gt(i, length)
            {
                // clear end
                mstore(add(dst, length), 0)
            }
        }

        function abi_decode_available_length_t_string_memory_ptr_fromMemory(src, length, end) -> array {
            array := allocate_memory(array_allocation_size_t_string_memory_ptr(length))
            mstore(array, length)
            let dst := add(array, 0x20)
            if gt(add(src, length), end) { revert_error_987264b3b1d58a9c7f8255e93e81c77d86d6299019c33110a076957a3e06e2ae() }
            copy_memory_to_memory(src, dst, length)
        }

        // string
        function abi_decode_t_string_memory_ptr_fromMemory(offset, end) -> array {
            if iszero(slt(add(offset, 0x1f), end)) { revert_error_1b9f4a0a5773e33b91aa01db23bf8c55fce1411167c872835e7fa00a4f17d46d() }
            let length := mload(offset)
            array := abi_decode_available_length_t_string_memory_ptr_fromMemory(add(offset, 0x20), length, end)
        }

        function cleanup_t_uint160(value) -> cleaned {
            cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
        }

        function cleanup_t_address(value) -> cleaned {
            cleaned := cleanup_t_uint160(value)
        }

        function validator_revert_t_address(value) {
            if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
        }

        function abi_decode_t_address_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_address(value)
        }

        function cleanup_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function validator_revert_t_uint256(value) {
            if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
        }

        function abi_decode_t_uint256_fromMemory(offset, end) -> value {
            value := mload(offset)
            validator_revert_t_uint256(value)
        }

        function abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_addresst_uint256_fromMemory(headStart, dataEnd) -> value0, value1, value2, value3 {
            if slt(sub(dataEnd, headStart), 128) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            {

                let offset := mload(add(headStart, 0))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value0 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := mload(add(headStart, 32))
                if gt(offset, 0xffffffffffffffff) { revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() }

                value1 := abi_decode_t_string_memory_ptr_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 64

                value2 := abi_decode_t_address_fromMemory(add(headStart, offset), dataEnd)
            }

            {

                let offset := 96

                value3 := abi_decode_t_uint256_fromMemory(add(headStart, offset), dataEnd)
            }

        }

        function copy_arguments_for_constructor_25_object_ERC20Mock_Sol_84() -> ret_param_0, ret_param_1, ret_param_2, ret_param_3 {
            let programSize := datasize("ERC20Mock_Sol_84")
            let argSize := sub(codesize(), programSize)

            let memoryDataOffset := allocate_memory(argSize)
            codecopy(memoryDataOffset, programSize, argSize)

            ret_param_0, ret_param_1, ret_param_2, ret_param_3 := abi_decode_tuple_t_string_memory_ptrt_string_memory_ptrt_addresst_uint256_fromMemory(memoryDataOffset, add(memoryDataOffset, argSize))
        }

        /// @ast-id 25
        /// @src 0:199:421  "constructor(..."
        function constructor_ERC20Mock_Sol_84(var_name_6_mpos, var_symbol_8_mpos, var_initialAccount_10, var_initialBalance_12) {
            /// @src 0:353:357  "name"
            let _6_mpos := var_name_6_mpos
            let expr_15_mpos := _6_mpos
            let _7_mpos := expr_15_mpos
            /// @src 0:359:365  "symbol"
            let _8_mpos := var_symbol_8_mpos
            let expr_16_mpos := _8_mpos
            let _9_mpos := expr_16_mpos

            /// @src 0:199:421  "constructor(..."
            constructor_ERC20_672(_7_mpos, _9_mpos)

            /// @src 0:383:397  "initialAccount"
            let _10 := var_initialAccount_10
            let expr_20 := _10
            /// @src 0:399:413  "initialBalance"
            let _11 := var_initialBalance_12
            let expr_21 := _11
            fun__mint_489(expr_20, expr_21)

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        function panic_error_0x00() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x00)
            revert(0, 0x24)
        }

        function array_length_t_string_memory_ptr(value) -> length {

            length := mload(value)

        }

        function panic_error_0x22() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x22)
            revert(0, 0x24)
        }

        function extract_byte_array_length(data) -> length {
            length := div(data, 2)
            let outOfPlaceEncoding := and(data, 1)
            if iszero(outOfPlaceEncoding) {
                length := and(length, 0x7f)
            }

            if eq(outOfPlaceEncoding, lt(length, 32)) {
                panic_error_0x22()
            }
        }

        function array_dataslot_t_string_storage(ptr) -> data {
            data := ptr

            mstore(0, ptr)
            data := keccak256(0, 0x20)

        }

        function divide_by_32_ceil(value) -> result {
            result := div(add(value, 31), 32)
        }

        function shift_left_dynamic(bits, value) -> newValue {
            newValue :=

            shl(bits, value)

        }

        function update_byte_slice_dynamic32(value, shiftBytes, toInsert) -> result {
            let shiftBits := mul(shiftBytes, 8)
            let mask := shift_left_dynamic(shiftBits, 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff)
            toInsert := shift_left_dynamic(shiftBits, toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function identity(value) -> ret {
            ret := value
        }

        function convert_t_uint256_to_t_uint256(value) -> converted {
            converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
        }

        function prepare_store_t_uint256(value) -> ret {
            ret := value
        }

        function update_storage_value_t_uint256_to_t_uint256(slot, offset, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_dynamic32(sload(slot), offset, prepare_store_t_uint256(convertedValue_0)))
        }

        function zero_value_for_split_t_uint256() -> ret {
            ret := 0
        }

        function storage_set_to_zero_t_uint256(slot, offset) {
            let zero_0 := zero_value_for_split_t_uint256()
            update_storage_value_t_uint256_to_t_uint256(slot, offset, zero_0)
        }

        function clear_storage_range_t_bytes1(start, end) {
            for {} lt(start, end) { start := add(start, 1) }
            {
                storage_set_to_zero_t_uint256(start, 0)
            }
        }

        function clean_up_bytearray_end_slots_t_string_storage(array, len, startIndex) {

            if gt(len, 31) {
                let dataArea := array_dataslot_t_string_storage(array)
                let deleteStart := add(dataArea, divide_by_32_ceil(startIndex))
                // If we are clearing array to be short byte array, we want to clear only data starting from array data area.
                if lt(startIndex, 32) { deleteStart := dataArea }
                clear_storage_range_t_bytes1(deleteStart, add(dataArea, divide_by_32_ceil(len)))
            }

        }

        function shift_right_unsigned_dynamic(bits, value) -> newValue {
            newValue :=

            shr(bits, value)

        }

        function mask_bytes_dynamic(data, bytes) -> result {
            let mask := not(shift_right_unsigned_dynamic(mul(8, bytes), not(0)))
            result := and(data, mask)
        }
        function extract_used_part_and_set_length_of_short_byte_array(data, len) -> used {
            // we want to save only elements that are part of the array after resizing
            // others should be set to zero
            data := mask_bytes_dynamic(data, len)
            used := or(data, mul(2, len))
        }
        function copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, src) {

            let newLen := array_length_t_string_memory_ptr(src)
            // Make sure array length is sane
            if gt(newLen, 0xffffffffffffffff) { panic_error_0x41() }

            let oldLen := extract_byte_array_length(sload(slot))

            // potentially truncate data
            clean_up_bytearray_end_slots_t_string_storage(slot, oldLen, newLen)

            let srcOffset := 0

            srcOffset := 0x20

            switch gt(newLen, 31)
            case 1 {
                let loopEnd := and(newLen, not(0x1f))

                let dstPtr := array_dataslot_t_string_storage(slot)
                let i := 0
                for { } lt(i, loopEnd) { i := add(i, 0x20) } {
                    sstore(dstPtr, mload(add(src, srcOffset)))
                    dstPtr := add(dstPtr, 1)
                    srcOffset := add(srcOffset, 32)
                }
                if lt(loopEnd, newLen) {
                    let lastValue := mload(add(src, srcOffset))
                    sstore(dstPtr, mask_bytes_dynamic(lastValue, and(newLen, 0x1f)))
                }
                sstore(slot, add(mul(newLen, 2), 1))
            }
            default {
                let value := 0
                if newLen {
                    value := mload(add(src, srcOffset))
                }
                sstore(slot, extract_used_part_and_set_length_of_short_byte_array(value, newLen))
            }
        }

        function update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(slot, value_0) {

            copy_byte_array_to_storage_from_t_string_memory_ptr_to_t_string_storage(slot, value_0)
        }

        /// @ast-id 129
        /// @src 1:1978:2091  "constructor(string memory name_, string memory symbol_) {..."
        function constructor_ERC20_672(var_name__115_mpos, var_symbol__117_mpos) {

            /// @src 1:1978:2091  "constructor(string memory name_, string memory symbol_) {..."
            constructor_IERC20Metadata_775()

            /// @src 1:2052:2057  "name_"
            let _12_mpos := var_name__115_mpos
            let expr_121_mpos := _12_mpos
            /// @src 1:2044:2057  "_name = name_"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x03, expr_121_mpos)
            let _13_slot := 0x03
            let expr_122_slot := _13_slot
            /// @src 1:2077:2084  "symbol_"
            let _14_mpos := var_symbol__117_mpos
            let expr_125_mpos := _14_mpos
            /// @src 1:2067:2084  "_symbol = symbol_"
            update_storage_value_offset_0t_string_memory_ptr_to_t_string_storage(0x04, expr_125_mpos)
            let _15_slot := 0x04
            let expr_126_slot := _15_slot

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        /// @src 3:277:682  "interface IERC20Metadata is IERC20 {..."
        function constructor_IERC20Metadata_775() {

            /// @src 3:277:682  "interface IERC20Metadata is IERC20 {..."
            constructor_IERC20_750()

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        /// @src 2:202:2766  "interface IERC20 {..."
        function constructor_IERC20_750() {

            /// @src 2:202:2766  "interface IERC20 {..."
            constructor_Context_797()

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        /// @src 4:608:843  "abstract contract Context {..."
        function constructor_Context_797() {

            /// @src 4:608:843  "abstract contract Context {..."

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        function cleanup_t_rational_0_by_1(value) -> cleaned {
            cleaned := value
        }

        function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
        }

        function convert_t_rational_0_by_1_to_t_address(value) -> converted {
            converted := convert_t_rational_0_by_1_to_t_uint160(value)
        }

        function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
            mstore(pos, length)
            updated_pos := add(pos, 0x20)
        }

        function store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(memPtr) {

            mstore(add(memPtr, 0), "ERC20: mint to the zero address")

        }

        function abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack(pos) -> end {
            pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
            store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(pos)
            end := add(pos, 32)
        }

        function abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
            tail := add(headStart, 32)

            mstore(add(headStart, 0), sub(tail, headStart))
            tail := abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack( tail)

        }

        function require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(condition ) {
            if iszero(condition) {
                let memPtr := allocate_unbounded()
                mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                let end := abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                revert(memPtr, sub(end, memPtr))
            }
        }

        function shift_right_0_unsigned(value) -> newValue {
            newValue :=

            shr(0, value)

        }

        function cleanup_from_storage_t_uint256(value) -> cleaned {
            cleaned := value
        }

        function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
            value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
        }

        function read_from_storage_split_offset_0_t_uint256(slot) -> value {
            value := extract_from_storage_value_offset_0t_uint256(sload(slot))

        }

        function panic_error_0x11() {
            mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
            mstore(4, 0x11)
            revert(0, 0x24)
        }

        function checked_add_t_uint256(x, y) -> sum {
            x := cleanup_t_uint256(x)
            y := cleanup_t_uint256(y)

            // overflow, if x > (maxValue - y)
            if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

            sum := add(x, y)
        }

        function shift_left_0(value) -> newValue {
            newValue :=

            shl(0, value)

        }

        function update_byte_slice_32_shift_0(value, toInsert) -> result {
            let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
            toInsert := shift_left_0(toInsert)
            value := and(value, not(mask))
            result := or(value, and(toInsert, mask))
        }

        function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
            let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
            sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
        }

        function convert_t_uint160_to_t_uint160(value) -> converted {
            converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
        }

        function convert_t_uint160_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_uint160(value)
        }

        function convert_t_address_to_t_address(value) -> converted {
            converted := convert_t_uint160_to_t_address(value)
        }

        function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
            mstore(0, convert_t_address_to_t_address(key))
            mstore(0x20, slot)
            dataSlot := keccak256(0, 0x40)
        }

        function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
            mstore(pos, cleanup_t_uint256(value))
        }

        function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
            tail := add(headStart, 32)

            abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

        }

        /// @ast-id 489
        /// @src 1:8415:8804  "function _mint(address account, uint256 amount) internal virtual {..."
        function fun__mint_489(var_account_436, var_amount_438) {

            /// @src 1:8498:8505  "account"
            let _16 := var_account_436
            let expr_442 := _16
            /// @src 1:8517:8518  "0"
            let expr_445 := 0x00
            /// @src 1:8509:8519  "address(0)"
            let expr_446 := convert_t_rational_0_by_1_to_t_address(expr_445)
            /// @src 1:8498:8519  "account != address(0)"
            let expr_447 := iszero(eq(cleanup_t_address(expr_442), cleanup_t_address(expr_446)))
            /// @src 1:8490:8555  "require(account != address(0), \"ERC20: mint to the zero address\")"
            require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(expr_447)
            /// @src 1:8595:8596  "0"
            let expr_454 := 0x00
            /// @src 1:8587:8597  "address(0)"
            let expr_455 := convert_t_rational_0_by_1_to_t_address(expr_454)
            /// @src 1:8599:8606  "account"
            let _17 := var_account_436
            let expr_456 := _17
            /// @src 1:8608:8614  "amount"
            let _18 := var_amount_438
            let expr_457 := _18
            fun__beforeTokenTransfer_660(expr_455, expr_456, expr_457)
            /// @src 1:8642:8648  "amount"
            let _19 := var_amount_438
            let expr_461 := _19
            /// @src 1:8626:8648  "_totalSupply += amount"
            let _20 := read_from_storage_split_offset_0_t_uint256(0x02)
            let expr_462 := checked_add_t_uint256(_20, expr_461)

            update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_462)
            /// @src 1:8680:8686  "amount"
            let _21 := var_amount_438
            let expr_467 := _21
            /// @src 1:8658:8667  "_balances"
            let _22 := 0x00
            let expr_464 := _22
            /// @src 1:8668:8675  "account"
            let _23 := var_account_436
            let expr_465 := _23
            /// @src 1:8658:8676  "_balances[account]"
            let _24 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_464,expr_465)
            /// @src 1:8658:8686  "_balances[account] += amount"
            let _25 := read_from_storage_split_offset_0_t_uint256(_24)
            let expr_468 := checked_add_t_uint256(_25, expr_467)

            update_storage_value_offset_0t_uint256_to_t_uint256(_24, expr_468)
            /// @src 1:8718:8719  "0"
            let expr_473 := 0x00
            /// @src 1:8710:8720  "address(0)"
            let expr_474 := convert_t_rational_0_by_1_to_t_address(expr_473)
            /// @src 1:8722:8729  "account"
            let _26 := var_account_436
            let expr_475 := _26
            /// @src 1:8731:8737  "amount"
            let _27 := var_amount_438
            let expr_476 := _27
            /// @src 1:8701:8738  "Transfer(address(0), account, amount)"
            let _28 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
            {
                let _29 := allocate_unbounded()
                let _30 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_29 , expr_476)
                log3(_29, sub(_30, _29) , _28, expr_474, expr_475)
            }/// @src 1:8777:8778  "0"
            let expr_482 := 0x00
            /// @src 1:8769:8779  "address(0)"
            let expr_483 := convert_t_rational_0_by_1_to_t_address(expr_482)
            /// @src 1:8781:8788  "account"
            let _31 := var_account_436
            let expr_484 := _31
            /// @src 1:8790:8796  "amount"
            let _32 := var_amount_438
            let expr_485 := _32
            fun__afterTokenTransfer_671(expr_483, expr_484, expr_485)

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        /// @ast-id 660
        /// @src 1:11795:11916  "function _beforeTokenTransfer(..."
        function fun__beforeTokenTransfer_660(var_from_652, var_to_654, var_amount_656) {

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        /// @ast-id 671
        /// @src 1:12504:12624  "function _afterTokenTransfer(..."
        function fun__afterTokenTransfer_671(var_from_663, var_to_665, var_amount_667) {

        }
        /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

    }
    /// @use-src 0:"contracts/ERC20Mock_Sol.sol", 1:"node_modules/@openzeppelin/contracts/token/ERC20/ERC20.sol", 4:"node_modules/@openzeppelin/contracts/utils/Context.sol"
    object "ERC20Mock_Sol_84_deployed" {
        code {
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."
            mstore(64, memoryguard(128))

            if iszero(lt(calldatasize(), 4))
            {
                let selector := shift_right_224_unsigned(calldataload(0))
                switch selector

                case 0x06fdde03
                {
                    // name()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_name_139()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x095ea7b3
                {
                    // approve(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_approve_251(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x18160ddd
                {
                    // totalSupply()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_totalSupply_169()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x222f5be0
                {
                    // transferInternal(address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                    fun_transferInternal_67(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x23b872dd
                {
                    // transferFrom(address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_transferFrom_284(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x313ce567
                {
                    // decimals()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_decimals_159()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint8__to_t_uint8__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x39509351
                {
                    // increaseAllowance(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_increaseAllowance_314(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x40c10f19
                {
                    // mint(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    fun_mint_38(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x56189cb4
                {
                    // approveInternal(address,address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1, param_2 :=  abi_decode_tuple_t_addresst_addresst_uint256(4, calldatasize())
                    fun_approveInternal_83(param_0, param_1, param_2)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x70a08231
                {
                    // balanceOf(address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0 :=  abi_decode_tuple_t_address(4, calldatasize())
                    let ret_0 :=  fun_balanceOf_183(param_0)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x95d89b41
                {
                    // symbol()

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    abi_decode_tuple_(4, calldatasize())
                    let ret_0 :=  fun_symbol_149()
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0x9dc29fac
                {
                    // burn(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    fun_burn_51(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple__to__fromStack(memPos  )
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa457c2d7
                {
                    // decreaseAllowance(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_decreaseAllowance_356(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xa9059cbb
                {
                    // transfer(address,uint256)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_uint256(4, calldatasize())
                    let ret_0 :=  fun_transfer_208(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_bool__to_t_bool__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                case 0xdd62ed3e
                {
                    // allowance(address,address)

                    if callvalue() { revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() }
                    let param_0, param_1 :=  abi_decode_tuple_t_addresst_address(4, calldatasize())
                    let ret_0 :=  fun_allowance_226(param_0, param_1)
                    let memPos := allocate_unbounded()
                    let memEnd := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(memPos , ret_0)
                    return(memPos, sub(memEnd, memPos))
                }

                default {}
            }

            revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74()

            function shift_right_224_unsigned(value) -> newValue {
                newValue :=

                shr(224, value)

            }

            function allocate_unbounded() -> memPtr {
                memPtr := mload(64)
            }

            function revert_error_ca66f745a3ce8ff40e2ccaf1ad45db7774001b90d25810abd9040049be7bf4bb() {
                revert(0, 0)
            }

            function revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() {
                revert(0, 0)
            }

            function abi_decode_tuple_(headStart, dataEnd)   {
                if slt(sub(dataEnd, headStart), 0) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

            }

            function array_length_t_string_memory_ptr(value) -> length {

                length := mload(value)

            }

            function array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function copy_memory_to_memory(src, dst, length) {
                let i := 0
                for { } lt(i, length) { i := add(i, 32) }
                {
                    mstore(add(dst, i), mload(add(src, i)))
                }
                if gt(i, length)
                {
                    // clear end
                    mstore(add(dst, length), 0)
                }
            }

            function round_up_to_mul_of_32(value) -> result {
                result := and(add(value, 31), not(31))
            }

            function abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value, pos) -> end {
                let length := array_length_t_string_memory_ptr(value)
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, length)
                copy_memory_to_memory(add(value, 0x20), pos, length)
                end := add(pos, round_up_to_mul_of_32(length))
            }

            function abi_encode_tuple_t_string_memory_ptr__to_t_string_memory_ptr__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_string_memory_ptr_to_t_string_memory_ptr_fromStack(value0,  tail)

            }

            function revert_error_c1322bf8034eace5e0b5c7295db60986aa89aae5e0ea0873e4689e076861a5db() {
                revert(0, 0)
            }

            function cleanup_t_uint160(value) -> cleaned {
                cleaned := and(value, 0xffffffffffffffffffffffffffffffffffffffff)
            }

            function cleanup_t_address(value) -> cleaned {
                cleaned := cleanup_t_uint160(value)
            }

            function validator_revert_t_address(value) {
                if iszero(eq(value, cleanup_t_address(value))) { revert(0, 0) }
            }

            function abi_decode_t_address(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_address(value)
            }

            function cleanup_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function validator_revert_t_uint256(value) {
                if iszero(eq(value, cleanup_t_uint256(value))) { revert(0, 0) }
            }

            function abi_decode_t_uint256(offset, end) -> value {
                value := calldataload(offset)
                validator_revert_t_uint256(value)
            }

            function abi_decode_tuple_t_addresst_uint256(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function cleanup_t_bool(value) -> cleaned {
                cleaned := iszero(iszero(value))
            }

            function abi_encode_t_bool_to_t_bool_fromStack(value, pos) {
                mstore(pos, cleanup_t_bool(value))
            }

            function abi_encode_tuple_t_bool__to_t_bool__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_bool_to_t_bool_fromStack(value0,  add(headStart, 0))

            }

            function abi_encode_t_uint256_to_t_uint256_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint256(value))
            }

            function abi_encode_tuple_t_uint256__to_t_uint256__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint256_to_t_uint256_fromStack(value0,  add(headStart, 0))

            }

            function abi_decode_tuple_t_addresst_addresst_uint256(headStart, dataEnd) -> value0, value1, value2 {
                if slt(sub(dataEnd, headStart), 96) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 64

                    value2 := abi_decode_t_uint256(add(headStart, offset), dataEnd)
                }

            }

            function abi_encode_tuple__to__fromStack(headStart ) -> tail {
                tail := add(headStart, 0)

            }

            function cleanup_t_uint8(value) -> cleaned {
                cleaned := and(value, 0xff)
            }

            function abi_encode_t_uint8_to_t_uint8_fromStack(value, pos) {
                mstore(pos, cleanup_t_uint8(value))
            }

            function abi_encode_tuple_t_uint8__to_t_uint8__fromStack(headStart , value0) -> tail {
                tail := add(headStart, 32)

                abi_encode_t_uint8_to_t_uint8_fromStack(value0,  add(headStart, 0))

            }

            function abi_decode_tuple_t_address(headStart, dataEnd) -> value0 {
                if slt(sub(dataEnd, headStart), 32) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function abi_decode_tuple_t_addresst_address(headStart, dataEnd) -> value0, value1 {
                if slt(sub(dataEnd, headStart), 64) { revert_error_dbdddcbe895c83990c08b3492a0e83918d802a52331272ac6fdb6a7c4aea3b1b() }

                {

                    let offset := 0

                    value0 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

                {

                    let offset := 32

                    value1 := abi_decode_t_address(add(headStart, offset), dataEnd)
                }

            }

            function revert_error_42b3090547df1d2001c96683413b8cf91c1b902ef5e3cb8d9f6f304cf7446f74() {
                revert(0, 0)
            }

            /// @ast-id 38
            /// @src 0:427:520  "function mint(address account, uint256 amount) public {..."
            function fun_mint_38(var_account_27, var_amount_29) {

                /// @src 0:497:504  "account"
                let _1 := var_account_27
                let expr_33 := _1
                /// @src 0:506:512  "amount"
                let _2 := var_amount_29
                let expr_34 := _2
                fun__mint_489(expr_33, expr_34)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 51
            /// @src 0:526:619  "function burn(address account, uint256 amount) public {..."
            function fun_burn_51(var_account_40, var_amount_42) {

                /// @src 0:596:603  "account"
                let _3 := var_account_40
                let expr_46 := _3
                /// @src 0:605:611  "amount"
                let _4 := var_amount_42
                let expr_47 := _4
                fun__burn_561(expr_46, expr_47)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 67
            /// @src 0:625:772  "function transferInternal(..."
            function fun_transferInternal_67(var_from_53, var_to_55, var_value_57) {

                /// @src 0:749:753  "from"
                let _5 := var_from_53
                let expr_61 := _5
                /// @src 0:755:757  "to"
                let _6 := var_to_55
                let expr_62 := _6
                /// @src 0:759:764  "value"
                let _7 := var_value_57
                let expr_63 := _7
                fun__transfer_433(expr_61, expr_62, expr_63)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 83
            /// @src 0:778:935  "function approveInternal(..."
            function fun_approveInternal_83(var_owner_69, var_spender_71, var_value_73) {

                /// @src 0:906:911  "owner"
                let _8 := var_owner_69
                let expr_77 := _8
                /// @src 0:913:920  "spender"
                let _9 := var_spender_71
                let expr_78 := _9
                /// @src 0:922:927  "value"
                let _10 := var_value_73
                let expr_79 := _10
                fun__approve_606(expr_77, expr_78, expr_79)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function zero_value_for_split_t_string_memory_ptr() -> ret {
                ret := 96
            }

            function panic_error_0x22() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x22)
                revert(0, 0x24)
            }

            function extract_byte_array_length(data) -> length {
                length := div(data, 2)
                let outOfPlaceEncoding := and(data, 1)
                if iszero(outOfPlaceEncoding) {
                    length := and(length, 0x7f)
                }

                if eq(outOfPlaceEncoding, lt(length, 32)) {
                    panic_error_0x22()
                }
            }

            function array_storeLengthForEncoding_t_string_memory_ptr(pos, length) -> updated_pos {
                mstore(pos, length)
                updated_pos := add(pos, 0x20)
            }

            function array_dataslot_t_string_storage(ptr) -> data {
                data := ptr

                mstore(0, ptr)
                data := keccak256(0, 0x20)

            }

            // string -> string
            function abi_encode_t_string_storage_to_t_string_memory_ptr(value, pos) -> ret {
                let slotValue := sload(value)
                let length := extract_byte_array_length(slotValue)
                pos := array_storeLengthForEncoding_t_string_memory_ptr(pos, length)
                switch and(slotValue, 1)
                case 0 {
                    // short byte array
                    mstore(pos, and(slotValue, not(0xff)))
                    ret := add(pos, 0x20)
                }
                case 1 {
                    // long byte array
                    let dataPos := array_dataslot_t_string_storage(value)
                    let i := 0
                    for { } lt(i, length) { i := add(i, 0x20) } {
                        mstore(add(pos, i), sload(dataPos))
                        dataPos := add(dataPos, 1)
                    }
                    ret := add(pos, i)
                }
            }

            function abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(value0, pos) -> updatedPos {
                updatedPos := abi_encode_t_string_storage_to_t_string_memory_ptr(value0, pos)
            }

            function panic_error_0x41() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x41)
                revert(0, 0x24)
            }

            function finalize_allocation(memPtr, size) {
                let newFreePtr := add(memPtr, round_up_to_mul_of_32(size))
                // protect against overflow
                if or(gt(newFreePtr, 0xffffffffffffffff), lt(newFreePtr, memPtr)) { panic_error_0x41() }
                mstore(64, newFreePtr)
            }

            function copy_array_from_storage_to_memory_t_string_storage(slot) -> memPtr {
                memPtr := allocate_unbounded()
                let end := abi_encodeUpdatedPos_t_string_storage_to_t_string_memory_ptr(slot, memPtr)
                finalize_allocation(memPtr, sub(end, memPtr))
            }

            function convert_array_t_string_storage_to_t_string_memory_ptr(value) -> converted  {

                // Copy the array to a free position in memory
                converted :=

                copy_array_from_storage_to_memory_t_string_storage(value)

            }

            /// @ast-id 139
            /// @src 1:2156:2254  "function name() public view virtual override returns (string memory) {..."
            function fun_name_139() -> var__134_mpos {
                /// @src 1:2210:2223  "string memory"
                let zero_t_string_memory_ptr_11_mpos := zero_value_for_split_t_string_memory_ptr()
                var__134_mpos := zero_t_string_memory_ptr_11_mpos

                /// @src 1:2242:2247  "_name"
                let _12_slot := 0x03
                let expr_136_slot := _12_slot
                /// @src 1:2235:2247  "return _name"
                var__134_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_136_slot)
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 149
            /// @src 1:2367:2469  "function symbol() public view virtual override returns (string memory) {..."
            function fun_symbol_149() -> var__144_mpos {
                /// @src 1:2423:2436  "string memory"
                let zero_t_string_memory_ptr_13_mpos := zero_value_for_split_t_string_memory_ptr()
                var__144_mpos := zero_t_string_memory_ptr_13_mpos

                /// @src 1:2455:2462  "_symbol"
                let _14_slot := 0x04
                let expr_146_slot := _14_slot
                /// @src 1:2448:2462  "return _symbol"
                var__144_mpos := convert_array_t_string_storage_to_t_string_memory_ptr(expr_146_slot)
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function zero_value_for_split_t_uint8() -> ret {
                ret := 0
            }

            function cleanup_t_rational_18_by_1(value) -> cleaned {
                cleaned := value
            }

            function identity(value) -> ret {
                ret := value
            }

            function convert_t_rational_18_by_1_to_t_uint8(value) -> converted {
                converted := cleanup_t_uint8(identity(cleanup_t_rational_18_by_1(value)))
            }

            /// @ast-id 159
            /// @src 1:3093:3184  "function decimals() public view virtual override returns (uint8) {..."
            function fun_decimals_159() -> var__154 {
                /// @src 1:3151:3156  "uint8"
                let zero_t_uint8_15 := zero_value_for_split_t_uint8()
                var__154 := zero_t_uint8_15

                /// @src 1:3175:3177  "18"
                let expr_156 := 0x12
                /// @src 1:3168:3177  "return 18"
                var__154 := convert_t_rational_18_by_1_to_t_uint8(expr_156)
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function zero_value_for_split_t_uint256() -> ret {
                ret := 0
            }

            function shift_right_0_unsigned(value) -> newValue {
                newValue :=

                shr(0, value)

            }

            function cleanup_from_storage_t_uint256(value) -> cleaned {
                cleaned := value
            }

            function extract_from_storage_value_offset_0t_uint256(slot_value) -> value {
                value := cleanup_from_storage_t_uint256(shift_right_0_unsigned(slot_value))
            }

            function read_from_storage_split_offset_0_t_uint256(slot) -> value {
                value := extract_from_storage_value_offset_0t_uint256(sload(slot))

            }

            /// @ast-id 169
            /// @src 1:3244:3350  "function totalSupply() public view virtual override returns (uint256) {..."
            function fun_totalSupply_169() -> var__164 {
                /// @src 1:3305:3312  "uint256"
                let zero_t_uint256_16 := zero_value_for_split_t_uint256()
                var__164 := zero_t_uint256_16

                /// @src 1:3331:3343  "_totalSupply"
                let _17 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_166 := _17
                /// @src 1:3324:3343  "return _totalSupply"
                var__164 := expr_166
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function convert_t_uint160_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_uint160(value)))
            }

            function convert_t_uint160_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_uint160(value)
            }

            function convert_t_address_to_t_address(value) -> converted {
                converted := convert_t_uint160_to_t_address(value)
            }

            function mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 183
            /// @src 1:3408:3533  "function balanceOf(address account) public view virtual override returns (uint256) {..."
            function fun_balanceOf_183(var_account_172) -> var__176 {
                /// @src 1:3482:3489  "uint256"
                let zero_t_uint256_18 := zero_value_for_split_t_uint256()
                var__176 := zero_t_uint256_18

                /// @src 1:3508:3517  "_balances"
                let _19 := 0x00
                let expr_178 := _19
                /// @src 1:3518:3525  "account"
                let _20 := var_account_172
                let expr_179 := _20
                /// @src 1:3508:3526  "_balances[account]"
                let _21 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_178,expr_179)
                let _22 := read_from_storage_split_offset_0_t_uint256(_21)
                let expr_180 := _22
                /// @src 1:3501:3526  "return _balances[account]"
                var__176 := expr_180
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function zero_value_for_split_t_bool() -> ret {
                ret := 0
            }

            /// @ast-id 208
            /// @src 1:3729:3918  "function transfer(address to, uint256 amount) public virtual override returns (bool) {..."
            function fun_transfer_208(var_to_186, var_amount_188) -> var__192 {
                /// @src 1:3808:3812  "bool"
                let zero_t_bool_23 := zero_value_for_split_t_bool()
                var__192 := zero_t_bool_23

                /// @src 1:3840:3852  "_msgSender()"
                let expr_197 := fun__msgSender_787()
                /// @src 1:3824:3852  "address owner = _msgSender()"
                let var_owner_195 := expr_197
                /// @src 1:3872:3877  "owner"
                let _24 := var_owner_195
                let expr_200 := _24
                /// @src 1:3879:3881  "to"
                let _25 := var_to_186
                let expr_201 := _25
                /// @src 1:3883:3889  "amount"
                let _26 := var_amount_188
                let expr_202 := _26
                fun__transfer_433(expr_200, expr_201, expr_202)
                /// @src 1:3907:3911  "true"
                let expr_205 := 0x01
                /// @src 1:3900:3911  "return true"
                var__192 := expr_205
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(slot , key) -> dataSlot {
                mstore(0, convert_t_address_to_t_address(key))
                mstore(0x20, slot)
                dataSlot := keccak256(0, 0x40)
            }

            /// @ast-id 226
            /// @src 1:3976:4125  "function allowance(address owner, address spender) public view virtual override returns (uint256) {..."
            function fun_allowance_226(var_owner_211, var_spender_213) -> var__217 {
                /// @src 1:4065:4072  "uint256"
                let zero_t_uint256_27 := zero_value_for_split_t_uint256()
                var__217 := zero_t_uint256_27

                /// @src 1:4091:4102  "_allowances"
                let _28 := 0x01
                let expr_219 := _28
                /// @src 1:4103:4108  "owner"
                let _29 := var_owner_211
                let expr_220 := _29
                /// @src 1:4091:4109  "_allowances[owner]"
                let _30 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_219,expr_220)
                let _31 := _30
                let expr_221 := _31
                /// @src 1:4110:4117  "spender"
                let _32 := var_spender_213
                let expr_222 := _32
                /// @src 1:4091:4118  "_allowances[owner][spender]"
                let _33 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_221,expr_222)
                let _34 := read_from_storage_split_offset_0_t_uint256(_33)
                let expr_223 := _34
                /// @src 1:4084:4118  "return _allowances[owner][spender]"
                var__217 := expr_223
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 251
            /// @src 1:4433:4630  "function approve(address spender, uint256 amount) public virtual override returns (bool) {..."
            function fun_approve_251(var_spender_229, var_amount_231) -> var__235 {
                /// @src 1:4516:4520  "bool"
                let zero_t_bool_35 := zero_value_for_split_t_bool()
                var__235 := zero_t_bool_35

                /// @src 1:4548:4560  "_msgSender()"
                let expr_240 := fun__msgSender_787()
                /// @src 1:4532:4560  "address owner = _msgSender()"
                let var_owner_238 := expr_240
                /// @src 1:4579:4584  "owner"
                let _36 := var_owner_238
                let expr_243 := _36
                /// @src 1:4586:4593  "spender"
                let _37 := var_spender_229
                let expr_244 := _37
                /// @src 1:4595:4601  "amount"
                let _38 := var_amount_231
                let expr_245 := _38
                fun__approve_606(expr_243, expr_244, expr_245)
                /// @src 1:4619:4623  "true"
                let expr_248 := 0x01
                /// @src 1:4612:4623  "return true"
                var__235 := expr_248
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 284
            /// @src 1:5192:5478  "function transferFrom(..."
            function fun_transferFrom_284(var_from_254, var_to_256, var_amount_258) -> var__262 {
                /// @src 1:5319:5323  "bool"
                let zero_t_bool_39 := zero_value_for_split_t_bool()
                var__262 := zero_t_bool_39

                /// @src 1:5353:5365  "_msgSender()"
                let expr_267 := fun__msgSender_787()
                /// @src 1:5335:5365  "address spender = _msgSender()"
                let var_spender_265 := expr_267
                /// @src 1:5391:5395  "from"
                let _40 := var_from_254
                let expr_270 := _40
                /// @src 1:5397:5404  "spender"
                let _41 := var_spender_265
                let expr_271 := _41
                /// @src 1:5406:5412  "amount"
                let _42 := var_amount_258
                let expr_272 := _42
                fun__spendAllowance_649(expr_270, expr_271, expr_272)
                /// @src 1:5433:5437  "from"
                let _43 := var_from_254
                let expr_276 := _43
                /// @src 1:5439:5441  "to"
                let _44 := var_to_256
                let expr_277 := _44
                /// @src 1:5443:5449  "amount"
                let _45 := var_amount_258
                let expr_278 := _45
                fun__transfer_433(expr_276, expr_277, expr_278)
                /// @src 1:5467:5471  "true"
                let expr_281 := 0x01
                /// @src 1:5460:5471  "return true"
                var__262 := expr_281
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function panic_error_0x11() {
                mstore(0, 35408467139433450592217433187231851964531694900788300625387963629091585785856)
                mstore(4, 0x11)
                revert(0, 0x24)
            }

            function checked_add_t_uint256(x, y) -> sum {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                // overflow, if x > (maxValue - y)
                if gt(x, sub(0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff, y)) { panic_error_0x11() }

                sum := add(x, y)
            }

            /// @ast-id 314
            /// @src 1:5873:6109  "function increaseAllowance(address spender, uint256 addedValue) public virtual returns (bool) {..."
            function fun_increaseAllowance_314(var_spender_287, var_addedValue_289) -> var__292 {
                /// @src 1:5961:5965  "bool"
                let zero_t_bool_46 := zero_value_for_split_t_bool()
                var__292 := zero_t_bool_46

                /// @src 1:5993:6005  "_msgSender()"
                let expr_297 := fun__msgSender_787()
                /// @src 1:5977:6005  "address owner = _msgSender()"
                let var_owner_295 := expr_297
                /// @src 1:6024:6029  "owner"
                let _47 := var_owner_295
                let expr_300 := _47
                /// @src 1:6031:6038  "spender"
                let _48 := var_spender_287
                let expr_301 := _48
                /// @src 1:6040:6051  "_allowances"
                let _49 := 0x01
                let expr_302 := _49
                /// @src 1:6052:6057  "owner"
                let _50 := var_owner_295
                let expr_303 := _50
                /// @src 1:6040:6058  "_allowances[owner]"
                let _51 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_302,expr_303)
                let _52 := _51
                let expr_304 := _52
                /// @src 1:6059:6066  "spender"
                let _53 := var_spender_287
                let expr_305 := _53
                /// @src 1:6040:6067  "_allowances[owner][spender]"
                let _54 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_304,expr_305)
                let _55 := read_from_storage_split_offset_0_t_uint256(_54)
                let expr_306 := _55
                /// @src 1:6070:6080  "addedValue"
                let _56 := var_addedValue_289
                let expr_307 := _56
                /// @src 1:6040:6080  "_allowances[owner][spender] + addedValue"
                let expr_308 := checked_add_t_uint256(expr_306, expr_307)

                fun__approve_606(expr_300, expr_301, expr_308)
                /// @src 1:6098:6102  "true"
                let expr_311 := 0x01
                /// @src 1:6091:6102  "return true"
                var__292 := expr_311
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function store_literal_in_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(memPtr) {

                mstore(add(memPtr, 0), "ERC20: decreased allowance below")

                mstore(add(memPtr, 32), " zero")

            }

            function abi_encode_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function wrapping_sub_t_uint256(x, y) -> diff {
                diff := cleanup_t_uint256(sub(x, y))
            }

            /// @ast-id 356
            /// @src 1:6596:7025  "function decreaseAllowance(address spender, uint256 subtractedValue) public virtual returns (bool) {..."
            function fun_decreaseAllowance_356(var_spender_317, var_subtractedValue_319) -> var__322 {
                /// @src 1:6689:6693  "bool"
                let zero_t_bool_57 := zero_value_for_split_t_bool()
                var__322 := zero_t_bool_57

                /// @src 1:6721:6733  "_msgSender()"
                let expr_327 := fun__msgSender_787()
                /// @src 1:6705:6733  "address owner = _msgSender()"
                let var_owner_325 := expr_327
                /// @src 1:6770:6781  "_allowances"
                let _58 := 0x01
                let expr_331 := _58
                /// @src 1:6782:6787  "owner"
                let _59 := var_owner_325
                let expr_332 := _59
                /// @src 1:6770:6788  "_allowances[owner]"
                let _60 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_331,expr_332)
                let _61 := _60
                let expr_333 := _61
                /// @src 1:6789:6796  "spender"
                let _62 := var_spender_317
                let expr_334 := _62
                /// @src 1:6770:6797  "_allowances[owner][spender]"
                let _63 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_333,expr_334)
                let _64 := read_from_storage_split_offset_0_t_uint256(_63)
                let expr_335 := _64
                /// @src 1:6743:6797  "uint256 currentAllowance = _allowances[owner][spender]"
                let var_currentAllowance_330 := expr_335
                /// @src 1:6815:6831  "currentAllowance"
                let _65 := var_currentAllowance_330
                let expr_338 := _65
                /// @src 1:6835:6850  "subtractedValue"
                let _66 := var_subtractedValue_319
                let expr_339 := _66
                /// @src 1:6815:6850  "currentAllowance >= subtractedValue"
                let expr_340 := iszero(lt(cleanup_t_uint256(expr_338), cleanup_t_uint256(expr_339)))
                /// @src 1:6807:6892  "require(currentAllowance >= subtractedValue, \"ERC20: decreased allowance below zero\")"
                require_helper_t_stringliteral_f8b476f7d28209d77d4a4ac1fe36b9f8259aa1bb6bddfa6e89de7e51615cf8a8(expr_340)
                /// @src 1:6935:6940  "owner"
                let _67 := var_owner_325
                let expr_345 := _67
                /// @src 1:6942:6949  "spender"
                let _68 := var_spender_317
                let expr_346 := _68
                /// @src 1:6951:6967  "currentAllowance"
                let _69 := var_currentAllowance_330
                let expr_347 := _69
                /// @src 1:6970:6985  "subtractedValue"
                let _70 := var_subtractedValue_319
                let expr_348 := _70
                /// @src 1:6951:6985  "currentAllowance - subtractedValue"
                let expr_349 := wrapping_sub_t_uint256(expr_347, expr_348)

                fun__approve_606(expr_345, expr_346, expr_349)
                /// @src 1:7014:7018  "true"
                let expr_353 := 0x01
                /// @src 1:7007:7018  "return true"
                var__322 := expr_353
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function cleanup_t_rational_0_by_1(value) -> cleaned {
                cleaned := value
            }

            function convert_t_rational_0_by_1_to_t_uint160(value) -> converted {
                converted := cleanup_t_uint160(identity(cleanup_t_rational_0_by_1(value)))
            }

            function convert_t_rational_0_by_1_to_t_address(value) -> converted {
                converted := convert_t_rational_0_by_1_to_t_uint160(value)
            }

            function store_literal_in_memory_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer from the zero ad")

                mstore(add(memPtr, 32), "dress")

            }

            function abi_encode_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 37)
                store_literal_in_memory_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer to the zero addr")

                mstore(add(memPtr, 32), "ess")

            }

            function abi_encode_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 35)
                store_literal_in_memory_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(memPtr) {

                mstore(add(memPtr, 0), "ERC20: transfer amount exceeds b")

                mstore(add(memPtr, 32), "alance")

            }

            function abi_encode_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 38)
                store_literal_in_memory_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function shift_left_0(value) -> newValue {
                newValue :=

                shl(0, value)

            }

            function update_byte_slice_32_shift_0(value, toInsert) -> result {
                let mask := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                toInsert := shift_left_0(toInsert)
                value := and(value, not(mask))
                result := or(value, and(toInsert, mask))
            }

            function convert_t_uint256_to_t_uint256(value) -> converted {
                converted := cleanup_t_uint256(identity(cleanup_t_uint256(value)))
            }

            function prepare_store_t_uint256(value) -> ret {
                ret := value
            }

            function update_storage_value_offset_0t_uint256_to_t_uint256(slot, value_0) {
                let convertedValue_0 := convert_t_uint256_to_t_uint256(value_0)
                sstore(slot, update_byte_slice_32_shift_0(sload(slot), prepare_store_t_uint256(convertedValue_0)))
            }

            /// @ast-id 433
            /// @src 1:7488:8139  "function _transfer(..."
            function fun__transfer_433(var_from_359, var_to_361, var_amount_363) {

                /// @src 1:7614:7618  "from"
                let _71 := var_from_359
                let expr_367 := _71
                /// @src 1:7630:7631  "0"
                let expr_370 := 0x00
                /// @src 1:7622:7632  "address(0)"
                let expr_371 := convert_t_rational_0_by_1_to_t_address(expr_370)
                /// @src 1:7614:7632  "from != address(0)"
                let expr_372 := iszero(eq(cleanup_t_address(expr_367), cleanup_t_address(expr_371)))
                /// @src 1:7606:7674  "require(from != address(0), \"ERC20: transfer from the zero address\")"
                require_helper_t_stringliteral_baecc556b46f4ed0f2b4cb599d60785ac8563dd2dc0a5bf12edea1c39e5e1fea(expr_372)
                /// @src 1:7692:7694  "to"
                let _72 := var_to_361
                let expr_377 := _72
                /// @src 1:7706:7707  "0"
                let expr_380 := 0x00
                /// @src 1:7698:7708  "address(0)"
                let expr_381 := convert_t_rational_0_by_1_to_t_address(expr_380)
                /// @src 1:7692:7708  "to != address(0)"
                let expr_382 := iszero(eq(cleanup_t_address(expr_377), cleanup_t_address(expr_381)))
                /// @src 1:7684:7748  "require(to != address(0), \"ERC20: transfer to the zero address\")"
                require_helper_t_stringliteral_0557e210f7a69a685100a7e4e3d0a7024c546085cee28910fd17d0b081d9516f(expr_382)
                /// @src 1:7780:7784  "from"
                let _73 := var_from_359
                let expr_387 := _73
                /// @src 1:7786:7788  "to"
                let _74 := var_to_361
                let expr_388 := _74
                /// @src 1:7790:7796  "amount"
                let _75 := var_amount_363
                let expr_389 := _75
                fun__beforeTokenTransfer_660(expr_387, expr_388, expr_389)
                /// @src 1:7830:7839  "_balances"
                let _76 := 0x00
                let expr_394 := _76
                /// @src 1:7840:7844  "from"
                let _77 := var_from_359
                let expr_395 := _77
                /// @src 1:7830:7845  "_balances[from]"
                let _78 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_394,expr_395)
                let _79 := read_from_storage_split_offset_0_t_uint256(_78)
                let expr_396 := _79
                /// @src 1:7808:7845  "uint256 fromBalance = _balances[from]"
                let var_fromBalance_393 := expr_396
                /// @src 1:7863:7874  "fromBalance"
                let _80 := var_fromBalance_393
                let expr_399 := _80
                /// @src 1:7878:7884  "amount"
                let _81 := var_amount_363
                let expr_400 := _81
                /// @src 1:7863:7884  "fromBalance >= amount"
                let expr_401 := iszero(lt(cleanup_t_uint256(expr_399), cleanup_t_uint256(expr_400)))
                /// @src 1:7855:7927  "require(fromBalance >= amount, \"ERC20: transfer amount exceeds balance\")"
                require_helper_t_stringliteral_4107e8a8b9e94bf8ff83080ddec1c0bffe897ebc2241b89d44f66b3d274088b6(expr_401)
                /// @src 1:7979:7990  "fromBalance"
                let _82 := var_fromBalance_393
                let expr_408 := _82
                /// @src 1:7993:7999  "amount"
                let _83 := var_amount_363
                let expr_409 := _83
                /// @src 1:7979:7999  "fromBalance - amount"
                let expr_410 := wrapping_sub_t_uint256(expr_408, expr_409)

                /// @src 1:7961:7970  "_balances"
                let _84 := 0x00
                let expr_405 := _84
                /// @src 1:7971:7975  "from"
                let _85 := var_from_359
                let expr_406 := _85
                /// @src 1:7961:7976  "_balances[from]"
                let _86 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_405,expr_406)
                /// @src 1:7961:7999  "_balances[from] = fromBalance - amount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_86, expr_410)
                let expr_411 := expr_410
                /// @src 1:8036:8042  "amount"
                let _87 := var_amount_363
                let expr_417 := _87
                /// @src 1:8019:8028  "_balances"
                let _88 := 0x00
                let expr_414 := _88
                /// @src 1:8029:8031  "to"
                let _89 := var_to_361
                let expr_415 := _89
                /// @src 1:8019:8032  "_balances[to]"
                let _90 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_414,expr_415)
                /// @src 1:8019:8042  "_balances[to] += amount"
                let _91 := read_from_storage_split_offset_0_t_uint256(_90)
                let expr_418 := checked_add_t_uint256(_91, expr_417)

                update_storage_value_offset_0t_uint256_to_t_uint256(_90, expr_418)
                /// @src 1:8067:8071  "from"
                let _92 := var_from_359
                let expr_421 := _92
                /// @src 1:8073:8075  "to"
                let _93 := var_to_361
                let expr_422 := _93
                /// @src 1:8077:8083  "amount"
                let _94 := var_amount_363
                let expr_423 := _94
                /// @src 1:8058:8084  "Transfer(from, to, amount)"
                let _95 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                {
                    let _96 := allocate_unbounded()
                    let _97 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_96 , expr_423)
                    log3(_96, sub(_97, _96) , _95, expr_421, expr_422)
                }/// @src 1:8115:8119  "from"
                let _98 := var_from_359
                let expr_427 := _98
                /// @src 1:8121:8123  "to"
                let _99 := var_to_361
                let expr_428 := _99
                /// @src 1:8125:8131  "amount"
                let _100 := var_amount_363
                let expr_429 := _100
                fun__afterTokenTransfer_671(expr_427, expr_428, expr_429)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(memPtr) {

                mstore(add(memPtr, 0), "ERC20: mint to the zero address")

            }

            function abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 31)
                store_literal_in_memory_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 489
            /// @src 1:8415:8804  "function _mint(address account, uint256 amount) internal virtual {..."
            function fun__mint_489(var_account_436, var_amount_438) {

                /// @src 1:8498:8505  "account"
                let _101 := var_account_436
                let expr_442 := _101
                /// @src 1:8517:8518  "0"
                let expr_445 := 0x00
                /// @src 1:8509:8519  "address(0)"
                let expr_446 := convert_t_rational_0_by_1_to_t_address(expr_445)
                /// @src 1:8498:8519  "account != address(0)"
                let expr_447 := iszero(eq(cleanup_t_address(expr_442), cleanup_t_address(expr_446)))
                /// @src 1:8490:8555  "require(account != address(0), \"ERC20: mint to the zero address\")"
                require_helper_t_stringliteral_fc0b381caf0a47702017f3c4b358ebe3d3aff6c60ce819a8bf3ef5a95d4f202e(expr_447)
                /// @src 1:8595:8596  "0"
                let expr_454 := 0x00
                /// @src 1:8587:8597  "address(0)"
                let expr_455 := convert_t_rational_0_by_1_to_t_address(expr_454)
                /// @src 1:8599:8606  "account"
                let _102 := var_account_436
                let expr_456 := _102
                /// @src 1:8608:8614  "amount"
                let _103 := var_amount_438
                let expr_457 := _103
                fun__beforeTokenTransfer_660(expr_455, expr_456, expr_457)
                /// @src 1:8642:8648  "amount"
                let _104 := var_amount_438
                let expr_461 := _104
                /// @src 1:8626:8648  "_totalSupply += amount"
                let _105 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_462 := checked_add_t_uint256(_105, expr_461)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_462)
                /// @src 1:8680:8686  "amount"
                let _106 := var_amount_438
                let expr_467 := _106
                /// @src 1:8658:8667  "_balances"
                let _107 := 0x00
                let expr_464 := _107
                /// @src 1:8668:8675  "account"
                let _108 := var_account_436
                let expr_465 := _108
                /// @src 1:8658:8676  "_balances[account]"
                let _109 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_464,expr_465)
                /// @src 1:8658:8686  "_balances[account] += amount"
                let _110 := read_from_storage_split_offset_0_t_uint256(_109)
                let expr_468 := checked_add_t_uint256(_110, expr_467)

                update_storage_value_offset_0t_uint256_to_t_uint256(_109, expr_468)
                /// @src 1:8718:8719  "0"
                let expr_473 := 0x00
                /// @src 1:8710:8720  "address(0)"
                let expr_474 := convert_t_rational_0_by_1_to_t_address(expr_473)
                /// @src 1:8722:8729  "account"
                let _111 := var_account_436
                let expr_475 := _111
                /// @src 1:8731:8737  "amount"
                let _112 := var_amount_438
                let expr_476 := _112
                /// @src 1:8701:8738  "Transfer(address(0), account, amount)"
                let _113 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                {
                    let _114 := allocate_unbounded()
                    let _115 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_114 , expr_476)
                    log3(_114, sub(_115, _114) , _113, expr_474, expr_475)
                }/// @src 1:8777:8778  "0"
                let expr_482 := 0x00
                /// @src 1:8769:8779  "address(0)"
                let expr_483 := convert_t_rational_0_by_1_to_t_address(expr_482)
                /// @src 1:8781:8788  "account"
                let _116 := var_account_436
                let expr_484 := _116
                /// @src 1:8790:8796  "amount"
                let _117 := var_amount_438
                let expr_485 := _117
                fun__afterTokenTransfer_671(expr_483, expr_484, expr_485)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function store_literal_in_memory_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f(memPtr) {

                mstore(add(memPtr, 0), "ERC20: burn from the zero addres")

                mstore(add(memPtr, 32), "s")

            }

            function abi_encode_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 33)
                store_literal_in_memory_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd(memPtr) {

                mstore(add(memPtr, 0), "ERC20: burn amount exceeds balan")

                mstore(add(memPtr, 32), "ce")

            }

            function abi_encode_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function checked_sub_t_uint256(x, y) -> diff {
                x := cleanup_t_uint256(x)
                y := cleanup_t_uint256(y)

                if lt(x, y) { panic_error_0x11() }

                diff := sub(x, y)
            }

            /// @ast-id 561
            /// @src 1:9124:9700  "function _burn(address account, uint256 amount) internal virtual {..."
            function fun__burn_561(var_account_492, var_amount_494) {

                /// @src 1:9207:9214  "account"
                let _118 := var_account_492
                let expr_498 := _118
                /// @src 1:9226:9227  "0"
                let expr_501 := 0x00
                /// @src 1:9218:9228  "address(0)"
                let expr_502 := convert_t_rational_0_by_1_to_t_address(expr_501)
                /// @src 1:9207:9228  "account != address(0)"
                let expr_503 := iszero(eq(cleanup_t_address(expr_498), cleanup_t_address(expr_502)))
                /// @src 1:9199:9266  "require(account != address(0), \"ERC20: burn from the zero address\")"
                require_helper_t_stringliteral_b16788493b576042bb52c50ed56189e0b250db113c7bfb1c3897d25cf9632d7f(expr_503)
                /// @src 1:9298:9305  "account"
                let _119 := var_account_492
                let expr_508 := _119
                /// @src 1:9315:9316  "0"
                let expr_511 := 0x00
                /// @src 1:9307:9317  "address(0)"
                let expr_512 := convert_t_rational_0_by_1_to_t_address(expr_511)
                /// @src 1:9319:9325  "amount"
                let _120 := var_amount_494
                let expr_513 := _120
                fun__beforeTokenTransfer_660(expr_508, expr_512, expr_513)
                /// @src 1:9362:9371  "_balances"
                let _121 := 0x00
                let expr_518 := _121
                /// @src 1:9372:9379  "account"
                let _122 := var_account_492
                let expr_519 := _122
                /// @src 1:9362:9380  "_balances[account]"
                let _123 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_518,expr_519)
                let _124 := read_from_storage_split_offset_0_t_uint256(_123)
                let expr_520 := _124
                /// @src 1:9337:9380  "uint256 accountBalance = _balances[account]"
                let var_accountBalance_517 := expr_520
                /// @src 1:9398:9412  "accountBalance"
                let _125 := var_accountBalance_517
                let expr_523 := _125
                /// @src 1:9416:9422  "amount"
                let _126 := var_amount_494
                let expr_524 := _126
                /// @src 1:9398:9422  "accountBalance >= amount"
                let expr_525 := iszero(lt(cleanup_t_uint256(expr_523), cleanup_t_uint256(expr_524)))
                /// @src 1:9390:9461  "require(accountBalance >= amount, \"ERC20: burn amount exceeds balance\")"
                require_helper_t_stringliteral_149b126e7125232b4200af45303d04fba8b74653b1a295a6a561a528c33fefdd(expr_525)
                /// @src 1:9516:9530  "accountBalance"
                let _127 := var_accountBalance_517
                let expr_532 := _127
                /// @src 1:9533:9539  "amount"
                let _128 := var_amount_494
                let expr_533 := _128
                /// @src 1:9516:9539  "accountBalance - amount"
                let expr_534 := wrapping_sub_t_uint256(expr_532, expr_533)

                /// @src 1:9495:9504  "_balances"
                let _129 := 0x00
                let expr_529 := _129
                /// @src 1:9505:9512  "account"
                let _130 := var_account_492
                let expr_530 := _130
                /// @src 1:9495:9513  "_balances[account]"
                let _131 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_529,expr_530)
                /// @src 1:9495:9539  "_balances[account] = accountBalance - amount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_131, expr_534)
                let expr_535 := expr_534
                /// @src 1:9575:9581  "amount"
                let _132 := var_amount_494
                let expr_539 := _132
                /// @src 1:9559:9581  "_totalSupply -= amount"
                let _133 := read_from_storage_split_offset_0_t_uint256(0x02)
                let expr_540 := checked_sub_t_uint256(_133, expr_539)

                update_storage_value_offset_0t_uint256_to_t_uint256(0x02, expr_540)
                /// @src 1:9606:9613  "account"
                let _134 := var_account_492
                let expr_543 := _134
                /// @src 1:9623:9624  "0"
                let expr_546 := 0x00
                /// @src 1:9615:9625  "address(0)"
                let expr_547 := convert_t_rational_0_by_1_to_t_address(expr_546)
                /// @src 1:9627:9633  "amount"
                let _135 := var_amount_494
                let expr_548 := _135
                /// @src 1:9597:9634  "Transfer(account, address(0), amount)"
                let _136 := 0xddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef
                {
                    let _137 := allocate_unbounded()
                    let _138 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_137 , expr_548)
                    log3(_137, sub(_138, _137) , _136, expr_543, expr_547)
                }/// @src 1:9665:9672  "account"
                let _139 := var_account_492
                let expr_552 := _139
                /// @src 1:9682:9683  "0"
                let expr_555 := 0x00
                /// @src 1:9674:9684  "address(0)"
                let expr_556 := convert_t_rational_0_by_1_to_t_address(expr_555)
                /// @src 1:9686:9692  "amount"
                let _140 := var_amount_494
                let expr_557 := _140
                fun__afterTokenTransfer_671(expr_552, expr_556, expr_557)

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function store_literal_in_memory_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(memPtr) {

                mstore(add(memPtr, 0), "ERC20: approve from the zero add")

                mstore(add(memPtr, 32), "ress")

            }

            function abi_encode_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 36)
                store_literal_in_memory_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            function store_literal_in_memory_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(memPtr) {

                mstore(add(memPtr, 0), "ERC20: approve to the zero addre")

                mstore(add(memPtr, 32), "ss")

            }

            function abi_encode_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 34)
                store_literal_in_memory_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(pos)
                end := add(pos, 64)
            }

            function abi_encode_tuple_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 606
            /// @src 1:10123:10493  "function _approve(..."
            function fun__approve_606(var_owner_564, var_spender_566, var_amount_568) {

                /// @src 1:10254:10259  "owner"
                let _141 := var_owner_564
                let expr_572 := _141
                /// @src 1:10271:10272  "0"
                let expr_575 := 0x00
                /// @src 1:10263:10273  "address(0)"
                let expr_576 := convert_t_rational_0_by_1_to_t_address(expr_575)
                /// @src 1:10254:10273  "owner != address(0)"
                let expr_577 := iszero(eq(cleanup_t_address(expr_572), cleanup_t_address(expr_576)))
                /// @src 1:10246:10314  "require(owner != address(0), \"ERC20: approve from the zero address\")"
                require_helper_t_stringliteral_c953f4879035ed60e766b34720f656aab5c697b141d924c283124ecedb91c208(expr_577)
                /// @src 1:10332:10339  "spender"
                let _142 := var_spender_566
                let expr_582 := _142
                /// @src 1:10351:10352  "0"
                let expr_585 := 0x00
                /// @src 1:10343:10353  "address(0)"
                let expr_586 := convert_t_rational_0_by_1_to_t_address(expr_585)
                /// @src 1:10332:10353  "spender != address(0)"
                let expr_587 := iszero(eq(cleanup_t_address(expr_582), cleanup_t_address(expr_586)))
                /// @src 1:10324:10392  "require(spender != address(0), \"ERC20: approve to the zero address\")"
                require_helper_t_stringliteral_24883cc5fe64ace9d0df1893501ecb93c77180f0ff69cca79affb3c316dc8029(expr_587)
                /// @src 1:10433:10439  "amount"
                let _143 := var_amount_568
                let expr_596 := _143
                /// @src 1:10403:10414  "_allowances"
                let _144 := 0x01
                let expr_591 := _144
                /// @src 1:10415:10420  "owner"
                let _145 := var_owner_564
                let expr_592 := _145
                /// @src 1:10403:10421  "_allowances[owner]"
                let _146 := mapping_index_access_t_mapping$_t_address_$_t_mapping$_t_address_$_t_uint256_$_$_of_t_address(expr_591,expr_592)
                let _147 := _146
                let expr_594 := _147
                /// @src 1:10422:10429  "spender"
                let _148 := var_spender_566
                let expr_593 := _148
                /// @src 1:10403:10430  "_allowances[owner][spender]"
                let _149 := mapping_index_access_t_mapping$_t_address_$_t_uint256_$_of_t_address(expr_594,expr_593)
                /// @src 1:10403:10439  "_allowances[owner][spender] = amount"
                update_storage_value_offset_0t_uint256_to_t_uint256(_149, expr_596)
                let expr_597 := expr_596
                /// @src 1:10463:10468  "owner"
                let _150 := var_owner_564
                let expr_600 := _150
                /// @src 1:10470:10477  "spender"
                let _151 := var_spender_566
                let expr_601 := _151
                /// @src 1:10479:10485  "amount"
                let _152 := var_amount_568
                let expr_602 := _152
                /// @src 1:10454:10486  "Approval(owner, spender, amount)"
                let _153 := 0x8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925
                {
                    let _154 := allocate_unbounded()
                    let _155 := abi_encode_tuple_t_uint256__to_t_uint256__fromStack(_154 , expr_602)
                    log3(_154, sub(_155, _154) , _153, expr_600, expr_601)
                }
            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function store_literal_in_memory_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe(memPtr) {

                mstore(add(memPtr, 0), "ERC20: insufficient allowance")

            }

            function abi_encode_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe_to_t_string_memory_ptr_fromStack(pos) -> end {
                pos := array_storeLengthForEncoding_t_string_memory_ptr_fromStack(pos, 29)
                store_literal_in_memory_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe(pos)
                end := add(pos, 32)
            }

            function abi_encode_tuple_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe__to_t_string_memory_ptr__fromStack(headStart ) -> tail {
                tail := add(headStart, 32)

                mstore(add(headStart, 0), sub(tail, headStart))
                tail := abi_encode_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe_to_t_string_memory_ptr_fromStack( tail)

            }

            function require_helper_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe(condition ) {
                if iszero(condition) {
                    let memPtr := allocate_unbounded()
                    mstore(memPtr, 0x08c379a000000000000000000000000000000000000000000000000000000000)
                    let end := abi_encode_tuple_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe__to_t_string_memory_ptr__fromStack(add(memPtr, 4) )
                    revert(memPtr, sub(end, memPtr))
                }
            }

            /// @ast-id 649
            /// @src 1:10770:11211  "function _spendAllowance(..."
            function fun__spendAllowance_649(var_owner_609, var_spender_611, var_amount_613) {

                /// @src 1:10937:10942  "owner"
                let _156 := var_owner_609
                let expr_619 := _156
                /// @src 1:10944:10951  "spender"
                let _157 := var_spender_611
                let expr_620 := _157
                /// @src 1:10927:10952  "allowance(owner, spender)"
                let expr_621 := fun_allowance_226(expr_619, expr_620)
                /// @src 1:10900:10952  "uint256 currentAllowance = allowance(owner, spender)"
                let var_currentAllowance_617 := expr_621
                /// @src 1:10966:10982  "currentAllowance"
                let _158 := var_currentAllowance_617
                let expr_623 := _158
                /// @src 1:10986:11003  "type(uint256).max"
                let expr_628 := 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff
                /// @src 1:10966:11003  "currentAllowance != type(uint256).max"
                let expr_629 := iszero(eq(cleanup_t_uint256(expr_623), cleanup_t_uint256(expr_628)))
                /// @src 1:10962:11205  "if (currentAllowance != type(uint256).max) {..."
                if expr_629 {
                    /// @src 1:11027:11043  "currentAllowance"
                    let _159 := var_currentAllowance_617
                    let expr_631 := _159
                    /// @src 1:11047:11053  "amount"
                    let _160 := var_amount_613
                    let expr_632 := _160
                    /// @src 1:11027:11053  "currentAllowance >= amount"
                    let expr_633 := iszero(lt(cleanup_t_uint256(expr_631), cleanup_t_uint256(expr_632)))
                    /// @src 1:11019:11087  "require(currentAllowance >= amount, \"ERC20: insufficient allowance\")"
                    require_helper_t_stringliteral_3b6607e091cba9325f958656d2b5e0622ab7dc0eac71a26ac788cb25bc19f4fe(expr_633)
                    /// @src 1:11138:11143  "owner"
                    let _161 := var_owner_609
                    let expr_638 := _161
                    /// @src 1:11145:11152  "spender"
                    let _162 := var_spender_611
                    let expr_639 := _162
                    /// @src 1:11154:11170  "currentAllowance"
                    let _163 := var_currentAllowance_617
                    let expr_640 := _163
                    /// @src 1:11173:11179  "amount"
                    let _164 := var_amount_613
                    let expr_641 := _164
                    /// @src 1:11154:11179  "currentAllowance - amount"
                    let expr_642 := wrapping_sub_t_uint256(expr_640, expr_641)

                    fun__approve_606(expr_638, expr_639, expr_642)
                    /// @src 1:10962:11205  "if (currentAllowance != type(uint256).max) {..."
                }

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 660
            /// @src 1:11795:11916  "function _beforeTokenTransfer(..."
            function fun__beforeTokenTransfer_660(var_from_652, var_to_654, var_amount_656) {

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            /// @ast-id 671
            /// @src 1:12504:12624  "function _afterTokenTransfer(..."
            function fun__afterTokenTransfer_671(var_from_663, var_to_665, var_amount_667) {

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

            function zero_value_for_split_t_address() -> ret {
                ret := 0
            }

            /// @ast-id 787
            /// @src 4:640:736  "function _msgSender() internal view virtual returns (address) {..."
            function fun__msgSender_787() -> var__781 {
                /// @src 4:693:700  "address"
                let zero_t_address_165 := zero_value_for_split_t_address()
                var__781 := zero_t_address_165

                /// @src 4:719:729  "msg.sender"
                let expr_784 := caller()
                /// @src 4:712:729  "return msg.sender"
                var__781 := expr_784
                leave

            }
            /// @src 0:161:937  "contract ERC20Mock_Sol is ERC20 {..."

        }

        data ".metadata" hex"a3646970667358221220a6083912cd2fcd204e2ab867e52214786467d79ee5dab750b5ee06de91ebf6896c6578706572696d656e74616cf564736f6c634300080b0041"
    }

}

