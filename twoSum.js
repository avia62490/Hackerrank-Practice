// /**
//  * @param {number[]} nums
//  * @param {number} target
//  * @return {number[]}
//  */
// var twoSum = function(nums, target) {
//   for(let i = 0; i < nums.length - 1; i++) {
//       for(let j = i + 1; j < nums.length; j++) {
//           if(nums[i] + nums[j] === target) {
//               return [i, j];
//           }
//       }
//   }
// };
/**
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 */
var twoSum = function(nums, target) {
  for(let i = 0; i < nums.length; i++) {
      let diff = target - nums[i];
      if(nums.includes(diff, i + 1)) {
          return [i, nums.indexOf(diff, i + 1)]
      }
  }
};